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
select orq.nome'Nome da Orquestra', orq.cidade 'Local de apresentação', orq.pais 'País', sinf.nome 'Sinfonia responsável' 
from sinfonia sinf
	inner join orquestra orq on  sinf.idSinfonia = orq.Sinfonia_idSinfonia
		order by orq.nome;
	







