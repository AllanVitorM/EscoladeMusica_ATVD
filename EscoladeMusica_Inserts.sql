-- Inserindo Sinfonias
INSERT INTO `Escola_Musica`.`Sinfonia` (nome, compositor, dt_criacao) VALUES 
('Sinfonia No. 5', 'Ludwig van Beethoven', '1808-12-22'),
('Sinfonia No. 9', 'Ludwig van Beethoven', '1824-05-07'),
('Sinfonia No. 40', 'Wolfgang Amadeus Mozart', '1788-07-25'),
('Sinfonia No. 3', 'Gustav Mahler', '1902-07-27'),
('Sinfonia No. 7', 'Dmitri Shostakovich', '1951-12-12'),
('Sinfonia No. 1', 'Johannes Brahms', '1876-11-04'),
('Sinfonia No. 6', 'Antonín Dvořák', '1893-02-24'),
('Sinfonia Fantástica', 'Hector Berlioz', '1830-12-05');

-- Inserindo Orquestras
INSERT INTO `Escola_Musica`.`Orquestra` (idOrquestra, nome, cidade, pais, dt_criacao, Sinfonia_idSinfonia) VALUES 
(1, 'Orquestra Sinfônica de São Paulo', 'São Paulo', 'Brasil', '1950-08-15', 1),
(2, 'Orquestra Filarmônica de Berlim', 'Berlim', 'Alemanha', '1882-10-01', 2),
(3, 'Orquestra Sinfônica de Nova Iorque', 'Nova Iorque', 'EUA', '1842-09-01', 3),
(4, 'Orquestra Sinfônica de Londres', 'Londres', 'Reino Unido', '1904-01-01', 4),
(5, 'Orquestra Sinfônica de Chicago', 'Chicago', 'EUA', '1891-04-17', 5),
(6, 'Orquestra Sinfônica de Tóquio', 'Tóquio', 'Japão', '1946-10-01', 6),
(7, 'Orquestra Nacional da França', 'Paris', 'França', '1934-01-01', 7),
(8, 'Orquestra Sinfônica da Rádio da Alemanha', 'Colônia', 'Alemanha', '1956-01-01', 8);

-- Inserindo Músicos
INSERT INTO `Escola_Musica`.`Musicos` (nome, identidade, nacionalidade, dt_nasc, Instrumento_Fav ,Orquestra_idOrquestra) VALUES 
('João da Silva', '123456789', 'Brasileiro', '1985-03-15', 'Viola' ,1),
('Maria Oliveira', '987654321', 'Brasileira', '1990-07-20', 'Violino' ,1),
('Hans Müller', '456123789', 'Alemão', '1982-11-05', 'Piano' ,2),
('Alice Schmidt', '321654987', 'Alemã', '1988-02-12', 'Trompete' ,2),
('James Brown', '147258369', 'Americano', '1975-05-30', 'Viola' ,3),
('Chen Wei', '852369741', 'Chinês', '1992-04-18', 'Oboé' ,3),
('Sofia Lopez', '963258741', 'Espanhola', '1983-06-09', 'Contrabaixo',4),
('Luca Rossi', '789456123', 'Italiano', '1991-03-22', 'Clarinete',5),
('Anya Petrov', '147852369', 'Russo', '1980-01-15', 'Flauta',6),
('Elena Garcia', '321654987', 'Mexicana', '1986-12-05', 'Trombone', 7),
('Omar Ali', '258369147', 'Egípcio', '1978-08-20', 'Viola' , 8),
('Nina Brown', '753951486', 'Britânica', '1995-10-11', 'Clarinete' , 1),
('David Kim', '159753486', 'Coreano', '1984-05-25', 'Piano' , 2),
('Emma Johnson', '456987123', 'Australiana', '1993-09-30', 'Violino' , 3),
('Lucas Martins', '852147963', 'Brasileiro', '1990-12-14', 'Viola' , 4);

-- Inserindo Funções dos Músicos
INSERT INTO `Escola_Musica`.`funcao_musicos` (reg_data, reg_funcao) VALUES 
('2024-01-10 10:00:00', 'Maestro'), -- 1
('2024-01-10 10:00:00', 'Flautista'), -- 2
('2024-01-10 10:00:00', 'Violinista'), -- 3 
('2024-01-10 10:00:00', 'Oboísta'), -- 4
('2024-01-10 10:00:00', 'Violista'), -- 5
('2024-01-10 10:00:00', 'Trompetista'), -- 6
('2024-01-10 10:00:00', 'Pianista'), -- 7
('2024-01-10 10:00:00', 'Contrabaixista'), -- 8
('2024-01-10 10:00:00', 'Clarinetista'); -- 9

-- Inserindo Instrumentos
INSERT INTO `Escola_Musica`.`Instrumentos` (Nome, Categoria) VALUES 
('Flauta', 'Soprano'), -- 1
('Violino', 'Cordas'), -- 2
('Trompete', 'Metal'), -- 3
('Piano', 'Teclado'), -- 4
('Contrabaixo', 'Cordas'), -- 5
('Viola', 'Cordas'), -- 6
('Clarinete', 'Metal'), -- 7
('Trombone', 'Metal'), -- 8
('Oboé', 'Madeira'), -- 9
('N/A', 'N/A'); -- 10

-- Inserindo Participações dos Músicos
INSERT INTO `Escola_Musica`.`participa` 
(Musicos_idMusicos, funcao_musicos_idfuncao_musicos, Sinfonia_idSinfonia, Instrumentos_idInstrumentos) VALUES 
(1, 1, 1, 10),  -- João como Maestro na Sinfonia No. 5 (sem tocar instrumento)
(2, 2, 1, 1),     -- Maria como Flautista na Sinfonia No. 5 tocando Flauta
(3, 3, 2, 2),     -- Hans como Violinista na Sinfonia No. 9 tocando Violino
(4, 4, 3, 9),     -- Alice como Violinista na Sinfonia No. 9 tocando Violino
(5, 1, 3, 10),  -- James como Maestro na Sinfonia No. 40 (sem tocar instrumento)
(6, 7, 4, 4),     -- Chen como Pianista na Sinfonia No. 3 tocando Piano
(7, 8, 5, 5),     -- Sofia como contrabaixista na Sinfonia No. 7 tocando Contrabaixo
(8, 4, 6, 9),     -- Luca como Oboísta na Sinfonia No. 1 tocando Oboé
(9, 1, 7, 10),  -- Anya como Maestro na Sinfonia No. 6 (sem tocar instrumento)
(9, 6, 3, 3),     -- Anya como Trompetista na Sinfonia No. 40 tocando Trompete
(10, 6, 8, 8),    -- Omar como Trompetista na Sinfonia Fantástica tocando Trombone
(11, 1, 4, 10), -- Nina como Maestro na Sinfonia No. 3 (sem tocar instrumento)
(12, 2, 5, 1),    -- David como Flautista na Sinfonia No. 7 tocando Flauta
(13, 3, 6, 2),    -- Emma como Violinista na Sinfonia No. 1 tocando Violino
(14, 4, 7, 9),    -- Lucas como Oboísta na Sinfonia No. 6 tocando Oboé
(2, 3, 2, 2),   -- Maria como Violinista na Sinfonia No. 9 tocando Violino
(3, 6, 3, 3),   -- Hans como Trompetista na Sinfonia No. 40 tocando Trompete
(4, 5, 4, 6),   -- Alice como Violista na Sinfonia No. 3 tocando Viola
(5, 4, 5, 9),   -- James como Oboísta na Sinfonia No. 7 tocando Oboé
(6, 2, 6, 1),   -- Chen como Flautista na Sinfonia No. 1 tocando Flauta
(7, 3, 7, 2),   -- Sofia como Violinista na Sinfonia No. 6 tocando Violino
(8, 5, 8, 6),   -- Luca como Violista na Sinfonia Fantástica tocando Viola
(10, 6, 6, 8),  -- Omar como Trompetista na Sinfonia No. 6 tocando Trombone
(11, 9, 5, 7),  -- Nina como Clarinetista na Sinfonia No. 7 tocando Clarinete
(12, 3, 8, 2),  -- David como Violinista na Sinfonia Fantástica tocando Violino
(13, 5, 4, 6),  -- Emma como Violista na Sinfonia No. 3 tocando Viola
(14, 6, 5, 3);  -- Lucas como Trompetista na Sinfonia No. 7 tocando Trompete


