-- Inserindo Orquestras
INSERT INTO `Escola_Musica`.`Orquestra` (idOrquestra, nome, cidade, pais, dt_criacao, Ultima_Apres, Data_Apres) VALUES 
(1, 'Orquestra Sinfônica de São Paulo', 'São Paulo', 'Brasil', '1950-08-15', '2020-03-10', '2023-08-15'),
(2, 'Orquestra Filarmônica de Berlim', 'Berlim', 'Alemanha', '1882-10-01', '2013-05-01', '2023-10-14');

-- Inserindo Sinfonias
INSERT INTO `Escola_Musica`.`Sinfonia` (nome, compositor, dt_criacao, Orquestra_idOrquestra) VALUES 
('Sinfonia No. 5', 'Ludwig van Beethoven', '1808-12-22', 1), -- 1
('Sinfonia No. 9', 'Ludwig van Beethoven', '1824-05-07', 1), -- 2
('Sinfonia No. 40', 'Wolfgang Amadeus Mozart', '1788-07-25', 1), -- 3
('Sinfonia No. 41', 'Wolfgang Amadeus Mozart', '1788-08-10', 2), -- 4
('Sinfonia No. 3', 'Ludwig van Beethoven', '1805-04-07', 2), -- 5
('Sinfonia No. 6', 'Pyotr Ilyich Tchaikovsky', '1893-10-28', 2), -- 6
('Sinfonia No. 4', 'Johannes Brahms', '1885-10-25', 2), -- 7
('Sinfonia No. 2', 'Gustav Mahler', '1895-12-13', 2), -- 8
('Sinfonia No. 7', 'Ludwig van Beethoven', '1813-12-08', 1), -- 9
('Sinfonia No. 8', 'Franz Schubert', '1822-10-31', 2), -- 10
('Sinfonia No. 1', 'Johannes Brahms', '1876-11-04', 1), -- 11
('Sinfonia No. 6', 'Antonín Dvořák', '1881-03-25', 1), -- 12
('Sinfonia No. 5', 'Dmitri Shostakovich', '1937-11-21', 1), -- 13
('Sinfonia No. 2', 'Sergei Rachmaninoff', '1908-02-08', 2), -- 14
('Sinfonia No. 5', 'Pyotr Ilyich Tchaikovsky', '1888-11-17', 2), -- 15
('Sinfonia No. 2', 'Ludwig van Beethoven', '1803-04-05', 2); -- 16

-- Inserindo Músicos
INSERT INTO `Escola_Musica`.`Musicos` (nome, identidade, nacionalidade, dt_nasc, Instrumento_Fav ,Orquestra_idOrquestra) VALUES 
('João da Silva', '123456789', 'Brasileiro', '1985-03-15', 'Viola' ,1), -- 1
('Maria Oliveira', '987654321', 'Brasileira', '1990-07-20', 'Violino' ,1), -- 2
('Hans Müller', '456123789', 'Alemão', '1982-11-05', 'Piano' ,1), -- 3
('Alice Schmidt', '321654987', 'Alemã', '1988-02-12', 'Trompete' ,1), -- 4
('James Brown', '147258369', 'Americano', '1975-05-30', 'Viola' ,1), -- 5
('Chen Wei', '852369741', 'Chinês', '1992-04-18', 'Oboé' ,1), -- 6
('Sofia Lopez', '963258741', 'Espanhola', '1983-06-09', 'Contrabaixo',1), -- 7
('Luca Rossi', '789456123', 'Italiano', '1991-03-22', 'Clarinete',1), -- 8
('Anya Petrov', '147852369', 'Russo', '1980-01-15', 'Flauta',1), -- 9
('Elena Garcia', '321654987', 'Mexicana', '1986-12-05', 'Trombone', 1), -- 10
('Omar Ali', '258369147', 'Egípcio', '1978-08-20', 'Viola' , 1), -- 11
('Nina Brown', '753951486', 'Britânica', '1995-10-11', 'Clarinete' , 1), -- 12
('David Kim', '159753486', 'Coreano', '1984-05-25', 'Piano' , 1), -- 13
('Emma Johnson', '456987123', 'Australiana', '1993-09-30', 'Violino' , 1), -- 14
('Lucas Martins', '852147963', 'Brasileiro', '1990-12-14', 'Viola' , 1), -- 15
-- Orquestra 2
('Isabella Costa', '789123456', 'Brasileira', '1992-02-23', 'Violino' , 2), -- 16
('Hiroshi Tanaka', '654789321', 'Japonês', '1986-11-15', 'Flauta' , 2), -- 17
('Giovanni Bianchi', '321789654', 'Italiano', '1988-06-27', 'Oboé' , 2), -- 18
('Ava Thompson', '852963741', 'Canadense', '1991-09-09', 'Trombone' , 2), -- 19
('Jean Dupont', '159357486', 'Francês', '1983-01-19', 'Piano' , 2), -- 20
('Carlos Sanchez', '951753852', 'Argentino', '1979-07-03', 'Contrabaixo' , 2), -- 21
('Emma Taylor', '987321654', 'Britânica', '1990-10-21', 'Clarinete' , 2), -- 22
('Leila Ahmed', '789654123', 'Egípcia', '1987-05-12', 'Violino' , 2), -- 23
('Pavel Ivanov', '321987654', 'Russo', '1985-04-22', 'Viola' ,2), -- 24
('Anita Dias', '456852123', 'Brasileira', '1992-11-14', 'Trompete' , 2), -- 25
('Juan Carlos', '963741258', 'Colombiano', '1984-02-10', 'Flauta' , 2), -- 26
('Otto Zimmer', '753951789', 'Alemão', '1980-09-18', 'Piano' , 2), -- 27
('Sophia Müller', '951357486', 'Austríaca', '1995-04-02', 'Oboé' , 2), -- 28
('Lucas Pereira', '147963258', 'Brasileiro', '1993-07-30', 'Violino' , 2), -- 29
('Olivia Lopez', '321456987', 'Espanhola', '1989-03-11', 'Trombone' , 2); -- 30

-- Inserindo Funções dos Músicos
INSERT INTO `Escola_Musica`.`funcao_musicos` (reg_data, reg_funcao) VALUES 
('2023-06-07', 'Maestro'), -- 1 Sinfonia No. 5 e 4
('2023-07-15', 'Maestro'), -- 2 Sinfonia No. 9
('2022-09-19', 'Maestro'), -- 3 Sinfonia No. 40

('2023-06-07', 'Flautista'), -- 4 Sinfonia No. 9
('2023-07-15', 'Flautista'), -- 5 Sinfonia No. 9
('2022-09-19', 'Flautista'), -- 6 Sinfonia No. 40

('2023-06-07', 'Violinista'), -- 7 Sinfonia No. 5
('2023-07-15', 'Violinista'), -- 8 Sinfonia No. 9
('2022-09-19', 'Violinista'), -- 9 Sinfonia No. 40

('2023-06-07', 'Oboísta'), -- 10 Sinfonia No. 5
('2023-07-15', 'Oboísta'), -- 11 Sinfonia No. 9
('2022-09-19', 'Oboísta'), -- 12 Sinfonia No. 40

('2023-06-07', 'Violista'), -- 13 Sinfonia No. 5
('2023-07-15', 'Violista'), -- 14 Sinfonia No. 9
('2022-09-19', 'Violista'), -- 15 Sinfonia No. 40

('2023-06-07', 'Trompetista'), -- 16 Sinfonia No. 5
('2023-07-15', 'Trompetista'), -- 17 Sinfonia No. 9
('2022-09-19', 'Trompetista'), -- 18 Sinfonia No. 40

('2023-06-07', 'Pianista'), -- 19 Sinfonia No. 5
('2023-07-15', 'Pianista'), -- 20 Sinfonia No. 9
('2022-09-19', 'Pianista'), -- 21 Sinfonia No. 40

('2023-06-07', 'Contrabaixista'), -- 22 Sinfonia No. 5
('2023-07-15', 'Contrabaixista'), -- 23 Sinfonia No. 9
('2022-09-19', 'Contrabaixista'), -- 24 Sinfonia No. 40

('2023-06-07', 'Clarinetista'), -- 25 Sinfonia No. 5
('2023-07-15', 'Clarinetista'), -- 26 Sinfonia No. 9
('2022-09-19', 'Clarinetista'), -- 27 Sinfonia No. 40

('2023-06-07', 'Trombonista'), -- 28 Sinfonia No. 5
('2023-07-15', 'Trombonista'), -- 29 Sinfonia No. 9
('2022-09-19', 'Trombonista'); -- 30 Sinfonia No. 40

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
-- Orquestra 1
-- Sinfonia No. 5
(1, 1, 1, 10),  -- João como Maestro na Sinfonia No. 5 (sem tocar instrumento) ok
(2, 4, 1, 1),  -- Maria como Flautista OK
(12, 4, 1, 1), -- Nina como Flautista OK
(6, 4, 1, 1),  -- Chen como Flautista OK
(3, 7, 1, 2),  -- Hans como Violinista OK
(8, 10, 1, 9),  -- Luca como Oboísta OK
(14, 10, 1, 9), -- Emma como Oboísta OK
(5, 19, 1, 4),  -- James como Pianista OK 
(7, 13, 1, 6),  -- Sofia como Violista OK
(10, 13, 1, 6), -- Elena como Violista OK
(13, 22, 1, 5), -- David como Contrabaixista OK
(11, 22, 1, 5), -- Omar como Contrabaixista OK
(15, 25, 1, 7), -- Lucas como Clarinetista
(9, 25, 1, 7),  -- Anya como Clarinetista
(4, 25, 1, 7),  -- Alice como Clarinetista
-- Sinfonia No.9 
(5, 2, 2, 10),  -- James como Maestro (sem tocar instrumento)
(2, 5, 2, 1),   -- Maria como Flautista
(3, 8, 2, 2),   -- Hans como Violinista
(15, 8, 2, 2),  -- Lucas como Violinista
(8, 11, 2, 9),   -- Luca como Oboísta
(7, 11, 2, 9),   -- Sofia como Oboísta
(6, 14, 2, 6),   -- Chen como Violista
(11, 14, 2, 6),  -- Omar como Violista
(14, 20, 2, 4),  -- Emma como Pianista
(12, 20, 2, 4),  -- Nina como Pianista
(1, 23, 2, 5),  -- João como Contrabaixista
(9, 26, 2, 7),   -- Anya como Clarinetista
(13, 26, 2, 7),  -- David como Clarinetista
(10, 17, 2, 3),   -- Elena como Trompetista
(4, 17, 2, 3),   -- Alice como Trompetista
-- Sinfonia No.40
(12, 3, 3, 10),  -- Nina como Maestro (sem tocar instrumento)
(2, 6, 3, 1),   -- Maria como Flautista
(3, 9, 3, 2),   -- Hans como Violinista
(15, 9, 3, 2),  -- Lucas como Violinista
(8, 12, 3, 9),   -- Luca como Oboísta
(6, 21, 3, 4),   -- Chen como Pianista
(11, 21, 3, 4),  -- Omar como Pianista
(14, 15, 3, 6),  -- Emma como Violista
(7, 15, 3, 6),   -- Sofia como Violista
(4, 24, 3, 5),  -- Alice como Contrabaixista
(9, 27, 3, 7),   -- Anya como Clarinetista
(10, 30, 3, 8),  -- Elena como Trombonista
(13, 30, 3, 8),  -- David como Trombonista
(5, 18, 3, 3),   -- James como Trompetista
(1, 18, 3, 3),   -- João como Trompetista
-- fim da Orquestra 1
-- Orquestra 2
-- Sinfonia No.41
(17, 1, 4, 10), -- Hiroshi como Maestro musico, função, sinfonia e instrumento
(16, 4, 4, 1), -- Isabela como Flautista
(18, 4, 4, 1), -- Giovanni como Flautista
(19, 7, 4, 2), -- Ava como Violinista
(20, 7, 4, 2), -- Jean como Violinista
(21, 13, 4, 6), -- Carlos como Violista
(30, 13, 4, 6), -- Olivia como Violista
(28, 16, 4, 3), -- Sophia como Trompetista
(25, 16, 4, 3), -- Anitta como Trompetista
(29, 19, 4, 4), --  Lucas como Pianista
(27, 22, 4, 5), -- Otto como Contrabaixista
(26, 22, 4, 5), -- Juan Carlos como Contrabaixista
(22, 10, 4, 9), -- Emma como Oboísta
(23, 25, 4, 7), -- Leila como Clarinetista
(24, 25, 4, 7), -- Pavel como Clarinetista
-- Sinfonia No. 3
(18, 2, 5, 10), -- Giovanni como Maestro
(25, 5, 5, 1), -- Anita como Flautista
(23, 5, 5, 1), -- Leila como Flautista
(30, 8, 5, 2), -- Olivia como Violinista
(24, 8, 5, 2), -- Pavel como Violinista
(28, 17, 5, 3), -- Sophia como Trompetista
(19, 29, 5, 8), -- Ava como trombonista
(29, 17, 5, 3), -- Lucas como Trompetista
(22, 29, 5, 8), -- Emma como Trombonista
(27, 19, 5, 4), -- Otto como Pianista
(20, 11, 5, 9), -- Jean como Oboísta
(26, 11, 5, 9), -- Juan Carlos como Oboísta
(16, 11, 5, 9), -- Isabella como Oboísta
(21, 23, 5, 5), -- Carlos como Contrabaixista
(17, 26, 5, 7), -- Hiroshi como Clarinetista
-- Sinfonia No.6
(30, 3, 6, 10), -- Olivia como Maestro
(16, 6, 6, 1), -- Isabella como Flautista
(28, 6, 6, 1), -- Sophia como Flautista
(22, 9, 6, 2), -- Emma como Violinista
(17, 12, 6, 9), -- Hiroshi como Violinista
(24, 13, 6, 6), -- Pavel como Violista
(18, 30, 6, 8), -- Giovanni como Violista
(25, 18, 6, 3), -- Anita como Trompetista
(23, 18, 6, 3), -- Leila como Trompetista
(21, 21, 6, 4), -- Carlos como Pianista
(29, 23, 6, 5), -- Lucas como Contrabaixista
(19, 23, 6, 5), -- Ava como Contrabaixista
(26, 27, 6, 7), -- Juan Carlos como Oboísta
(20, 27, 6, 7), -- Jean como Clarinetista
(27, 27, 6, 7); -- Hans como Clarinetista
