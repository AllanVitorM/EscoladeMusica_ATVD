-- Qual a Função dos músicos? sua data de nascimento, seu nome e seu instrumento favorito.
select msc.nome 'Nome do Músico', date_format(msc.dt_nasc, "%d/%m/%Y") 'Data de Nascimento',timestampdiff(year, msc.dt_nasc, now()) "Idade", 
msc.Instrumento_Fav 'Instrumento Favorito do Músico', msc.nacionalidade 'Nacionalidade', 
func.reg_funcao 'Função do Músico', inst.nome 'Instrumento do músico'
from musicos msc
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
    inner join instrumentos inst on inst.idInstrumentos = prt.Instrumentos_idInstrumentos
    inner join funcao_musicos func on func.idfuncao_musicos = prt.funcao_musicos_idfuncao_musicos
		order by msc.nome;


-- Quais os músicos que vão se apresentar na sinfonia 40?
select msc.nome 'Nome do Músico', date_format(msc.dt_nasc, "%d/%m/%Y") 'Data de Nascimento',timestampdiff(year, msc.dt_nasc, now()) "Idade", 
msc.Instrumento_Fav 'Instrumento Favorito', msc.nacionalidade 'Nacionalidade', 
sinf.nome 'Nome da Orquestra', inst.Nome 'Instrumento do Músico', inst.categoria 'Categoria do Instrumento'
from musicos msc
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
    inner join sinfonia sinf on sinf.idSinfonia = prt.Sinfonia_idSinfonia
    inner join instrumentos inst on inst.idInstrumentos = prt.Instrumentos_idInstrumentos
		where sinf.nome like "Sinfonia No. 40"
		order by msc.nome;
        
-- Qual o nome da orquestra e em qual cidade irão se apresentar?
select orq.nome'Nome da Orquestra', orq.cidade'Local de apresentação', orq.pais 'País', sinf.nome 'Sinfonia' 
from orquestra orq
	inner join sinfonia sinf on sinf.Orquestra_idOrquestra = orq.idOrquestra
			order by orq.nome;
	
-- Quais os maestros das orquestras e qual a data do evento?
select orq.nome 'Nome da Orquestra', fmsc.reg_funcao 'Função', msc.nome 'Nome', orq.cidade 'Local de Apresentação', date_format(orq.Data_Apres, "%d/%m/%Y") 'Data do evento'
from orquestra orq
	inner join musicos msc on msc.Orquestra_idOrquestra = orq.idOrquestra
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
	inner join funcao_musicos fmsc on fmsc.idfuncao_musicos = prt.funcao_musicos_idfuncao_musicos
		Where fmsc.reg_funcao like "Maestro"
			order by date_format(orq.Data_Apres, "%d/%m/%Y");

-- Qual a data de criação da sinfonia? sua duração, seu nome e o local de apresentação.
select sinf.nome "Nome da Sinfonia",sinf.duracao "Duração" ,date_format(sinf.dt_criacao, "%d/%m/%Y") 'Data de Criação', sinf.compositor, 
orq.nome "Local de Apresentação"
from sinfonia sinf
	inner join orquestra orq on sinf.Orquestra_idOrquestra = orq.idOrquestra
		Where sinf.dt_criacao between "1824-05-07" and "1893-10-28";

-- Quais Músicos são do Brasil e em qual orquestras eles tocam?
select msc.nome "Nome do Músico", date_format(msc.dt_nasc, "%d/%m/%Y") 'Data de Nascimento',timestampdiff(year, msc.dt_nasc, now()) "Idade", msc.nacionalidade "Nacionalidade",
orq.nome "Nome da Orquestra"
from musicos msc
	inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
		Where msc.nacionalidade like "Brasil%"
			order by msc.nome;

-- Quando foi a última apresentação e quando vai haver uma nova apresentação?
select orq.nome "Nome da Orquestra", date_format(orq.Ultima_Apres, "%d/%m/%Y") "Última apresentação da Orquestra", date_format(orq.Data_Apres, "%d/%m/%Y") "Início das apresentações",
msc.nome "Nome do Músico", fmsc.reg_funcao
from orquestra orq
    inner join musicos msc on msc.Orquestra_idOrquestra = orq.idOrquestra
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
    inner join funcao_musicos fmsc on fmsc.idfuncao_musicos = prt.funcao_musicos_idfuncao_musicos
		where fmsc.reg_funcao like "Maestro"
			order by msc.nome;
            
-- Qual a marca dos instrumentos, seus nomes, categorias e o nome do músico que o toca?
select inst.marca "Marca", inst.Nome "Nome do instrumento",inst.Categoria "Categoria do Instrumento", msc.nome "Nome do Músico"
from instrumentos inst
	inner join participa part on part.Instrumentos_idInstrumentos = inst.idInstrumentos
    inner join musicos msc on msc.idMusicos = part.Musicos_idMusicos
			order by msc.nome;

-- Quantas horas as orquestras duram?
select orq.nome "Nome", count(sinf.idSinfonia) "Quantidade", sec_to_time(sum(time_to_Sec(sinf.duracao))) "Horas de evento"
from orquestra orq
	inner join sinfonia sinf on sinf.Orquestra_idOrquestra = orq.idOrquestra
		group by orq.nome
			order by orq.nome;

-- Quais Músicos são do gênero Feminino, sua idade e sua experiência?
Create View Musicistas as
	select msc.nome "Nome do Músico",timestampdiff(year, msc.dt_nasc, now()) "Idade", 
	msc.Sexo "Gênero", msc.experiencia "Experiência" ,orq.nome "Nome da Orquestra"
	from musicos msc
		inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
			where msc.Sexo like "F"
				order by msc.experiencia;
        
-- Quantos músicos participam na Orquestra Sinfônica de São Paulo e seus nomes?
create view PartOrqSaoPaulo as
	select msc.nome "Nome do Músico", orq.nome "Orquestra", count(distinct part.Sinfonia_idSinfonia) "Participações" 
	from participa part
		inner join musicos msc on part.Musicos_idMusicos = msc.idMusicos
		inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
			where orq.nome like "Orquestra Sinfônica de São Paulo"
				group by msc.nome, orq.nome
					order by count(distinct part.Sinfonia_idSinfonia) desc;
                
-- Qual instrumentos mais utilizados e a quantidade de músicos nas orquestras?
create view InstrumentoseQtdMusicos as
	select orq.nome "Orquestra", inst.Nome, count(part.Instrumentos_idInstrumentos) "Instrumentos mais utilizados", count(part.Musicos_idMusicos) "Quantidade de Músicos"
	from participa part
		inner join instrumentos inst on part.Instrumentos_idInstrumentos = inst.idInstrumentos
		inner join musicos msc on part.Musicos_idMusicos = msc.idMusicos
		inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
			group by orq.nome, inst.Nome
				order by orq.nome;

-- Qual a quantidade de instrumentos há nas sinfonias e quais as categorias?
 create view SinfoniasCategQtdinst as
	select sinf.nome "Sinfonia", inst.Categoria "Nome dos Instrumentos", inst.marca ,count(part.Instrumentos_idInstrumentos) 'Quantidade de Instrumentos'
	from participa part
		inner join instrumentos inst on part.Instrumentos_idInstrumentos = inst.idInstrumentos
		inner join sinfonia sinf on part.Sinfonia_idSinfonia = sinf.idSinfonia
			group by inst.Categoria, sinf.Nome, inst.marca
				order by count(part.Instrumentos_idInstrumentos) desc;
            
-- Quantos dias de apresentação são? 
create view qtdDias as
	select orq.nome "Orquestra", date_format(orq.Data_Apres, "%d/%m/%Y") "Início das apresentações", date_format(orq.Final_Apres, "%d/%m/%Y") "Ultimo dia das Apresentações",
	datediff(Final_Apres, Data_Apres) "Quantidade de Dias de apresentações", count(sinf.Orquestra_idOrquestra) "Quantidade de Sinfonias tocadas"
	from sinfonia sinf
		inner join orquestra orq on sinf.Orquestra_idOrquestra = orq.idOrquestra
			group by orq.nome, orq.Data_Apres, orq.Final_Apres
				order by datediff(Final_Apres, Data_Apres) Desc;
            
-- Consulta 15 Quais as funções dos Brasileiros e quantos são?
create view FuncaoQtdMsc as
	select fmscs.reg_funcao "Função", msc.nacionalidade "Nacionalidade", count(distinct msc.idMusicos) "Quantidade de Músicos"
	from participa part
		inner join musicos msc on part.Musicos_idMusicos = msc.idMusicos
		inner join funcao_musicos fmscs on part.funcao_musicos_idfuncao_musicos = fmscs.idfuncao_musicos
			where msc.nacionalidade like "Brasil%"
				group by fmscs.reg_funcao, msc.nacionalidade
					order by count(msc.idMusicos) desc;
		
-- Qual nome dos Maestros que tocam nas sinfonias, sua nacionalidade, experiência e instrumento favorito?
create view MaestroNacionalidade as
	select msc.nome "Nome do Maestro", sinf.Nome "Nome da Sinfonia", msc.nacionalidade "Nacionalidade", msc.experiencia "Experiência" , msc.Instrumento_Fav "Instrumento Favorito"
	from participa part
		inner join musicos msc on part.Musicos_idMusicos = msc.idMusicos
		inner join funcao_musicos fmsc on part.funcao_musicos_idfuncao_musicos = fmsc.idfuncao_musicos
		inner join sinfonia sinf on part.Sinfonia_idSinfonia = sinf.idSinfonia
			where fmsc.reg_funcao = "Maestro"
				order by msc.nome;
                
-- Quais as diversidades dos intrumentos nas orquestras?
select orq.nome "Orquestra", count(distinct inst.Categoria) "Diversidade de Instrumentos"
from participa part
	inner join instrumentos inst on part.Instrumentos_idInstrumentos = inst.idInstrumentos
    inner join musicos msc on part.Musicos_idMusicos = msc.idMusicos
    inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
		group by orq.nome;
        
-- Quais Orquestras os músicos participam, sua experiência e quais instrumentos eles tocam?
create view MscOrqInst as
	select msc.nome "Nome", orq.nome "Orquestra", msc.experiencia "Experiência", inst.Nome "Instrumento" 
	from participa part
		inner join instrumentos inst on part.Instrumentos_idInstrumentos = inst.idInstrumentos
		inner join musicos msc on part.Musicos_idMusicos = msc.idMusicos
		inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
			order by msc.experiencia desc;

-- Qual a data de criação da sinfonia, seu nome e quem compoz juntamente com a duração da sinfonia?
create view SinfCriacaoComp as
	select sinf.nome "Nome da Sinfonia", date_format(sinf.dt_criacao, "%d/%m/%Y") "Data de Criação", 
    sinf.compositor "Compositor", coalesce(sinf.duracao, "Não Atualizado") "Duração"
	from sinfonia sinf
		inner join orquestra orq on sinf.Orquestra_idOrquestra = orq.idOrquestra
		order by sinf.compositor;
		
-- Qual a quantidade de músicos alemães, sua experiência e quais instrumentos eles tocam?
create view QtdMscAlemão as
	select count(msc.idMusicos)"Quantidade de Músicos", msc.nacionalidade "Nacionalidade", msc.experiencia "Experiência",
    msc.Sexo "Gênero", inst.Nome "Instrumentos"  
	from participa part 
		inner join musicos msc on part.Musicos_idMusicos = msc.idMusicos
		inner join instrumentos inst on part.Instrumentos_idInstrumentos = inst.idInstrumentos
			where msc.nacionalidade like "Alemã%"
				group by msc.nacionalidade, inst.Nome, msc.sexo, msc.experiencia;
