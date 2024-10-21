update orquestra
	set Final_Apres = "2023-10-22"
		where idOrquestra = 1;

update orquestra
	set Final_Apres = "2023-12-24"
		where idOrquestra = 2;
        
update musicos
	set Sexo = "F"
		where nacionalidade like "Brasileira";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Brasileiro";
        
update musicos
	set Sexo = "F"
		where nacionalidade like "Alemã";
        
update musicos
	set Sexo = "F"
		where nacionalidade like "Australiana%";
        
update musicos
	set Sexo = "F"
		where nacionalidade like "Espanhola%";
        
update musicos
	set Sexo = "F"
		where nacionalidade like "Austriaca%";
        
update musicos
	set Sexo = "F"
		where nacionalidade like "Britânica%";
        
update musicos
	set Sexo = "F"
		where nacionalidade like "Canadense%";
update musicos
	set Sexo = "F"
		where nacionalidade like "Egípcia%";

update musicos
	set Sexo = "M"
		where nacionalidade like "Americano%";

update musicos
	set Sexo = "M"
		where nacionalidade like "Argentino%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Russo%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Chinês%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Italiano%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Colombiano%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Francês%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Japonês%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Coreano%";
        
update musicos
	set Sexo = "M"
		where nacionalidade like "Egípcio%";

update musicos
	set Sexo = "M"
		where nacionalidade like "Alemão";
        
update instrumentos
	set Marca = "Yamaha Barroca YRA314BIII"
		where idInstrumentos = 1;

update instrumentos
	set Marca = "AMATI"
		where idInstrumentos = 2;
        
update instrumentos
	set Marca = "Yamaha Ytr3335cn"
		where idInstrumentos = 3;
        
update instrumentos
	set Marca = "Bösendorfer"
		where idInstrumentos = 4;
        
update instrumentos
	set Marca = "TAGIMA"
		where idInstrumentos = 5;

update instrumentos
	set Marca = "ROZINI"
		where idInstrumentos = 6;
        
update instrumentos
	set Marca = "Buffet Crampon"
		where idInstrumentos = 7;
        
update instrumentos
	set Marca = "Trombone de Vara Jupiter"
		where idInstrumentos = 8;
        
update instrumentos
	set Marca = "Lorée"
		where idInstrumentos = 9;
        
update sinfonia
	set duracao = "00:47:36"
		where idSinfonia = 1;
update sinfonia
	set duracao = "01:06:35"
		where idSinfonia = 2;
update sinfonia
	set duracao = "00:30:23"
		where idSinfonia = 3;
update sinfonia
	set duracao = "00:41:15"
		where idSinfonia = 4;
update sinfonia
	set duracao = "00:48:50"
		where idSinfonia = 5;
update sinfonia
	set duracao = "00:45:04"
		where idSinfonia = 6;
update sinfonia
	set duracao = "00:42:14"
		where idSinfonia = 7;
update sinfonia
	set duracao = "01:18:34"
		where idSinfonia = 8;
        
update musicos
	set experiencia = "5 Anos"
		where idMusicos in (3, 6, 9, 12, 4, 7, 15, 18, 27, 28, 29, 2, 3, 8, 19, 22);
        
update musicos 
	set experiencia = "12 Anos"
        where idMusicos in (1, 5, 17, 30, 13, 24, 21, 23, 11, 10, 26, 20, 25, 13, 14, 16);
SET SQL_SAFE_UPDATES = 0;
