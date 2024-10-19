-- Inner Join 1
select msc.nome 'Nome do Músico', date_format(msc.dt_nasc, "%d/%m/%Y") 'Data de Nascimento',timestampdiff(year, msc.dt_nasc, now()) "Idade", 
msc.Instrumento_Fav 'Instrumento Favorito do Músico', msc.nacionalidade 'Nacionalidade', 
func.reg_funcao 'Função do Músico', inst.nome 'Instrumento do músico'
from musicos msc
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
    inner join instrumentos inst on inst.idInstrumentos = prt.Instrumentos_idInstrumentos
    inner join funcao_musicos func on func.idfuncao_musicos = prt.funcao_musicos_idfuncao_musicos
		order by msc.nome;


-- Inner Join 2
select msc.nome 'Nome do Músico', date_format(msc.dt_nasc, "%d/%m/%Y") 'Data de Nascimento',timestampdiff(year, msc.dt_nasc, now()) "Idade", 
msc.Instrumento_Fav 'Instrumento Favorito do Músico', msc.nacionalidade 'Nacionalidade', 
sinf.nome 'Nome da Orquestra', inst.Nome 'Instrumento do Músico', inst.categoria 'Categoria do Instrumento'
from musicos msc
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
    inner join sinfonia sinf on sinf.idSinfonia = prt.Sinfonia_idSinfonia
    inner join instrumentos inst on inst.idInstrumentos = prt.Instrumentos_idInstrumentos
		where sinf.nome like "Sinfonia No. 40"
		order by msc.nome;
        
-- Inner Join 3
select orq.nome'Nome da Orquestra', orq.cidade 'Local de apresentação', orq.pais 'País', sinf.nome 'Sinfonia' 
from orquestra orq
	inner join sinfonia sinf on sinf.Orquestra_idOrquestra = orq.idOrquestra
			order by orq.nome;
	
-- Consulta 4

select orq.nome 'Nome da Orquestra', fmsc.reg_funcao 'Função', msc.nome 'Nome', orq.cidade 'Local de Apresentação', date_format(orq.Data_Apres, "%d/%m/%Y") 'Data do evento'
from orquestra orq
	inner join musicos msc on msc.Orquestra_idOrquestra = orq.idOrquestra
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
	inner join funcao_musicos fmsc on fmsc.idfuncao_musicos = prt.funcao_musicos_idfuncao_musicos
		Where fmsc.reg_funcao like "Maestro"
			order by date_format(orq.Data_Apres, "%d/%m/%Y");

-- Consulta 5

select sinf.nome "Nome da Sinfonia", date_format(sinf.dt_criacao, "%d/%m/%Y") 'Data de Criação', sinf.compositor, orq.nome "Local de Apresentação"
from sinfonia sinf
	inner join orquestra orq on sinf.Orquestra_idOrquestra = orq.idOrquestra
		Where sinf.dt_criacao between "1824-05-07" and "1893-10-28";

-- Consulta 6
select msc.nome "Nome do Músico", date_format(msc.dt_nasc, "%d/%m/%Y") 'Data de Nascimento',timestampdiff(year, msc.dt_nasc, now()) "Idade", msc.nacionalidade "Nacionalidade",
orq.nome "Nome da Orquestra"
from musicos msc
	inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
		Where msc.nacionalidade like "Brasil%"
			order by msc.nome;

-- Consulta 7
select orq.nome "Nome da Orquestra", date_format(orq.Ultima_Apres, "%d/%m/%Y") "Última apresentação da Orquestra", date_format(orq.Data_Apres, "%d/%m/%Y") "Início das apresentações",
msc.nome "Nome do Músico", fmsc.reg_funcao
from orquestra orq
    inner join musicos msc on msc.Orquestra_idOrquestra = orq.idOrquestra
	inner join participa prt on prt.Musicos_idMusicos = msc.idMusicos
    inner join funcao_musicos fmsc on fmsc.idfuncao_musicos = prt.funcao_musicos_idfuncao_musicos
		where fmsc.reg_funcao like "Maestro"
			order by msc.nome;
            
-- Consulta 8
select inst.Nome "Nome do instrumento", inst.Categoria "Categoria do Instrumento", msc.nome "Nome do Músico"
from instrumentos inst
	inner join participa part on part.Instrumentos_idInstrumentos = inst.idInstrumentos
    inner join musicos msc on msc.idMusicos = part.Musicos_idMusicos
			order by msc.nome;

-- Consulta 9
select orq.nome "Nome", count(sinf.idSinfonia) "Quantidade"
from orquestra orq
	inner join sinfonia sinf on sinf.Orquestra_idOrquestra = orq.idOrquestra
		group by orq.nome
			order by orq.nome;

-- Consulta 10
select msc.nome "Nome do Músico",timestampdiff(year, msc.dt_nasc, now()) "Idade", 
msc.Sexo "Gênero", orq.nome "Nome da Orquestra"
from musicos msc
	inner join orquestra orq on msc.Orquestra_idOrquestra = orq.idOrquestra
		where msc.Sexo like "F";
        
