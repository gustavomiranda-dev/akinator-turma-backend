-- ==========================================
-- RESET
-- ==========================================

TRUNCATE TABLE
pessoa_resposta,
game_candidatos,
game_perguntas_usadas,
game,
pessoa,
pergunta
RESTART IDENTITY CASCADE;


-- ==========================================
-- PESSOAS
-- ==========================================

INSERT INTO pessoa (nome, foto) VALUES
('Valdimiro', '/images/valdimiro.jpg'),
('Gustavo', '/images/gustavo.jpg'),
('Ana Flavia', '/images/ana-flavia.jpg'),
('Maxwell', '/images/maxwell.jpg'),
('Ryan', '/images/ryan.jpg'),
('Agostinha', '/images/agostinha.jpg'),
('Andre', '/images/andre.jpg'),
('Pedro Lucas', '/images/pedro-lucas.jpg'),
('Pedro Ificlis', '/images/pedro-ificlis.jpg'),
('Arthur', '/images/arthur.jpg'),
('Sthe', '/images/sthe.jpg'),
('Taysla', '/images/taysla.jpg'),
('Eduarda', '/images/eduarda.jpg'),
('Richard', '/images/richard.jpg'),
('Ana Julia', '/images/ana-julia.jpg'),
('Ana Kaline', '/images/ana-kaline.jpg'),
('Ana Mirela', '/images/ana-mirela.jpg'),
('Ana Thavine', '/images/ana-thavine.jpg'),
('Ana Vitoria', '/images/ana-vitoria.jpg'),
('Antonio Samuel', '/images/antonio-samuel.jpg'),
('Arthur Aragao', '/images/arthur-aragao.jpg'),
('Davi Juvenal', '/images/davi-juvenal.jpg'),
('Davi Ribeiro', '/images/davi-ribeiro.jpg'),
('Eric', '/images/eric.jpg'),
('Elitania', '/images/elitania.jpg'),
('Francisco Levy', '/images/francisco-levy.jpg'),
('Francisco Vinicius', '/images/francisco-vinicius.jpg'),
('Joao Pedro', '/images/joao-pedro.jpg'),
('Jose Carneiro', '/images/jose-carneiro.jpg'),
('Lara', '/images/lara.jpg'),
('Lindomar', '/images/lindomar.jpg'),
('Luis Otavio', '/images/luis-otavio.jpg'),
('Marcos Vinicius', '/images/marcos-vinicius.jpg'),
('Maria Clara', '/images/maria-clara.jpg'),
('Mariana', '/images/mariana.jpg'),
('Maya', '/images/maya.jpg'),
('Misaias', '/images/misaias.jpg'),
('Pedro Ewerton', '/images/pedro-ewerton.jpg'),
('Rafaela', '/images/rafaela.jpg'),
('Ruan', '/images/ruan.jpg'),
('Cristina', '/images/cristina.jpg'),
('Junin', '/images/junin.jpg');

-- ==========================================
-- PERGUNTAS
-- ==========================================

INSERT INTO pergunta (texto) VALUES
('É homem?'),
('Usa óculos?'),
('É alto?'),
('Tem cabelo cacheado?'),
('Tem cabelo curto?'),
('Tem cabelo escuro?'),
('É da zona rural?'),
('Conversa muito?'),
('É tímido?'),
('Joga futebol?'),
('Pratica esporte?'),
('Joga videogame?'),
('Participa de olimpíadas?'),
('Costuma faltar aula?'),
('Chega cedo à escola?'),
('É extrovertido?'),
('É estudioso?'),
('É engraçado?'),
('É bagunceiro?'),
('Conhece muita gente?');


-- ==========================================
-- RESPOSTAS
-- ==========================================

INSERT INTO pessoa_resposta (pessoa_id, pergunta_id, resposta) VALUES

   -- ======================================
-- Valdimiro - ID 1
-- ======================================
   (1, 1, true), -- É homem?
   (1, 2, false), -- Usa óculos?
   (1, 3, false), -- É alto?
   (1, 4, false), -- Tem cabelo cacheado?
   (1, 5, true), -- Tem cabelo curto?
   (1, 6, true), -- Tem cabelo escuro?
   (1, 7, true), -- É da zona rural?
   (1, 8, true), -- Conversa muito?
   (1, 9, false), -- É tímido?
   (1, 10, false), -- Joga futebol?
   (1, 11, false), -- Pratica esporte?
   (1, 12, true), -- Joga videogame?
   (1, 13, false), -- Participa de olimpíadas?
   (1, 14, true), -- Costuma faltar aula?
   (1, 15, true), -- Chega cedo à escola?
   (1, 16, true), -- É extrovertido?
   (1, 17, true), -- É estudioso?
   (1, 18, true), -- É engraçado?
   (1, 19, true), -- É bagunceiro?
   (1, 20, true), -- Conhece muita gente?

-- ======================================
-- Gustavo - ID 2
-- ======================================
   (2, 1, true), -- É homem?
   (2, 2, false), -- Usa óculos?
   (2, 3, true), -- É alto?
   (2, 4, false), -- Tem cabelo cacheado?
   (2, 5, false), -- Tem cabelo curto?
   (2, 6, false), -- Tem cabelo escuro?
   (2, 7, true), -- É da zona rural?
   (2, 8, false), -- Conversa muito?
   (2, 9, false), -- É tímido?
   (2, 10, true), -- Joga futebol?
   (2, 11, true), -- Pratica esporte?
   (2, 12, true), -- Joga videogame?
   (2, 13, true), -- Participa de olimpíadas?
   (2, 14, false), -- Costuma faltar aula?
   (2, 15, true), -- Chega cedo à escola?
   (2, 16, false), -- É extrovertido?
   (2, 17, true), -- É estudioso?
   (2, 18, true), -- É engraçado?
   (2, 19, false), -- É bagunceiro?
   (2, 20, true), -- Conhece muita gente?

-- ======================================
-- Ana Flavia - ID 3
-- ======================================
   (3, 1, false), -- É homem?
   (3, 2, true), -- Usa óculos?
   (3, 3, false), -- É alto?
   (3, 4, false), -- Tem cabelo cacheado?
   (3, 5, false), -- Tem cabelo curto?
   (3, 6, true), -- Tem cabelo escuro?
   (3, 7, false), -- É da zona rural?
   (3, 8, false), -- Conversa muito?
   (3, 9, true), -- É tímido?
   (3, 10, false), -- Joga futebol?
   (3, 11, false), -- Pratica esporte?
   (3, 12, false), -- Joga videogame?
   (3, 13, false), -- Participa de olimpíadas?
   (3, 14, true), -- Costuma faltar aula?
   (3, 15, true), -- Chega cedo à escola?
   (3, 16, false), -- É extrovertido?
   (3, 17, true), -- É estudioso?
   (3, 18, false), -- É engraçado?
   (3, 19, false), -- É bagunceiro?
   (3, 20, false), -- Conhece muita gente?

-- ======================================
-- Maxwell - ID 4
-- ======================================
   (4, 1, true), -- É homem?
   (4, 2, false), -- Usa óculos?
   (4, 3, false), -- É alto?
   (4, 4, false), -- Tem cabelo cacheado?
   (4, 5, true), -- Tem cabelo curto?
   (4, 6, true), -- Tem cabelo escuro?
   (4, 7, true), -- É da zona rural?
   (4, 8, true), -- Conversa muito?
   (4, 9, false), -- É tímido?
   (4, 10, true), -- Joga futebol?
   (4, 11, true), -- Pratica esporte?
   (4, 12, true), -- Joga videogame?
   (4, 13,false ), -- Participa de olimpíadas?
   (4, 14, false), -- Costuma faltar aula?
   (4, 15, true), -- Chega cedo à escola?
   (4, 16, true), -- É extrovertido?
   (4, 17, false), -- É estudioso?
   (4, 18, true), -- É engraçado?
   (4, 19, true), -- É bagunceiro?
   (4, 20, false), -- Conhece muita gente?

-- ======================================
-- Ryan - ID 5
-- ======================================
   (5, 1, true), -- É homem?
   (5, 2, true), -- Usa óculos?
   (5, 3, false), -- É alto?
   (5, 4, false), -- Tem cabelo cacheado?
   (5, 5, true), -- Tem cabelo curto?
   (5, 6, true), -- Tem cabelo escuro?
   (5, 7, false), -- É da zona rural?
   (5, 8, true), -- Conversa muito?
   (5, 9, false), -- É tímido?
   (5, 10, true), -- Joga futebol?
   (5, 11, true), -- Pratica esporte?
   (5, 12, false), -- Joga videogame?
   (5, 13, true), -- Participa de olimpíadas?
   (5, 14, false), -- Costuma faltar aula?
   (5, 15, true), -- Chega cedo à escola?
   (5, 16, true), -- É extrovertido?
   (5, 17, true ), -- É estudioso?
   (5, 18, true), -- É engraçado?
   (5, 19, true), -- É bagunceiro?
   (5, 20, true), -- Conhece muita gente?

-- ======================================
-- Agostinha - ID 6
-- ======================================
   (6, 1, false), -- É homem?
   (6, 2, false), -- Usa óculos?
   (6, 3, false), -- É alto?
   (6, 4, true), -- Tem cabelo cacheado?
   (6, 5,false), -- Tem cabelo curto?
   (6, 6, false), -- Tem cabelo escuro?
   (6, 7, true), -- É da zona rural?
   (6, 8, true), -- Conversa muito?
   (6, 9, false), -- É tímido?
   (6, 10, false), -- Joga futebol?
   (6, 11, false), -- Pratica esporte?
   (6, 12, false), -- Joga videogame?
   (6, 13, false), -- Participa de olimpíadas?
   (6, 14, false), -- Costuma faltar aula?
   (6, 15, true), -- Chega cedo à escola?
   (6, 16, false), -- É extrovertido?
   (6, 17, false), -- É estudioso?
   (6, 18, false), -- É engraçado?
   (6, 19, true), -- É bagunceiro?
   (6, 20, false), -- Conhece muita gente?

-- ======================================
-- Andre - ID 7
-- ======================================
   (7, 1, true), -- É homem?
   (7, 2, true), -- Usa óculos?
   (7, 3, false), -- É alto?
   (7, 4, true), -- Tem cabelo cacheado?
   (7, 5, true), -- Tem cabelo curto?
   (7, 6, true), -- Tem cabelo escuro?
   (7, 7, false), -- É da zona rural?
   (7, 8, true), -- Conversa muito?
   (7, 9, false), -- É tímido?
   (7, 10, true), -- Joga futebol?
   (7, 11, true ), -- Pratica esporte?
   (7, 12, true), -- Joga videogame?
   (7, 13, true), -- Participa de olimpíadas?
   (7, 14, false), -- Costuma faltar aula?
   (7, 15, true), -- Chega cedo à escola?
   (7, 16, true), -- É extrovertido?
   (7, 17, false), -- É estudioso?
   (7, 18, true), -- É engraçado?
   (7, 19, true), -- É bagunceiro?
   (7, 20, true), -- Conhece muita gente?

-- ======================================
-- Pedro Lucas - ID 8
-- ======================================
   (8, 1, true), -- É homem?
   (8, 2,false ), -- Usa óculos?
   (8, 3, false), -- É alto?
   (8, 4, false), -- Tem cabelo cacheado?
   (8, 5, false), -- Tem cabelo curto?
   (8, 6, true), -- Tem cabelo escuro?
   (8, 7, true), -- É da zona rural?
   (8, 8, true), -- Conversa muito?
   (8, 9, false), -- É tímido?
   (8, 10,true ), -- Joga futebol?
   (8, 11, true), -- Pratica esporte?
   (8, 12, true), -- Joga videogame?
   (8, 13, false), -- Participa de olimpíadas?
   (8, 14,true ), -- Costuma faltar aula?
   (8, 15, true), -- Chega cedo à escola?
   (8, 16, true), -- É extrovertido?
   (8, 17, false), -- É estudioso?
   (8, 18, true), -- É engraçado?
   (8, 19, true), -- É bagunceiro?
   (8, 20,true ), -- Conhece muita gente?

-- ======================================
-- Pedro Ificlis - ID 9
-- ======================================
   (9, 1, true), -- É homem?
   (9, 2, true), -- Usa óculos?
   (9, 3, true), -- É alto?
   (9, 4, true), -- Tem cabelo cacheado?
   (9, 5, false), -- Tem cabelo curto?
   (9, 6, true), -- Tem cabelo escuro?
   (9, 7, false), -- É da zona rural?
   (9, 8, true), -- Conversa muito?
   (9, 9, false), -- É tímido?
   (9, 10, false), -- Joga futebol?
   (9, 11, true), -- Pratica esporte?
   (9, 12, true), -- Joga videogame?
   (9, 13, false), -- Participa de olimpíadas?
   (9, 14, true), -- Costuma faltar aula?
   (9, 15, false), -- Chega cedo à escola?
   (9, 16, true), -- É extrovertido?
   (9, 17, false), -- É estudioso?
   (9, 18, true), -- É engraçado?
   (9, 19, true), -- É bagunceiro?
   (9, 20, true), -- Conhece muita gente?

-- ======================================
-- Arthur - ID 10
-- ======================================
   (10, 1, true), -- É homem?
   (10, 2, false), -- Usa óculos?
   (10, 3, true), -- É alto?
   (10, 4, false), -- Tem cabelo cacheado?
   (10, 5, false), -- Tem cabelo curto?
   (10, 6, true), -- Tem cabelo escuro?
   (10, 7, false), -- É da zona rural?
   (10, 8, true), -- Conversa muito?
   (10, 9, false), -- É tímido?
   (10, 10, true), -- Joga futebol?
   (10, 11, true), -- Pratica esporte?
   (10, 12, false), -- Joga videogame?
   (10, 13, false), -- Participa de olimpíadas?
   (10, 14, true), -- Costuma faltar aula?
   (10, 15, true), -- Chega cedo à escola?
   (10, 16,true ), -- É extrovertido?
   (10, 17, false), -- É estudioso?
   (10, 18, true), -- É engraçado?
   (10, 19, true), -- É bagunceiro?
   (10, 20, true), -- Conhece muita gente?

-- ======================================
-- Sthe - ID 11
-- ======================================
   (11, 1,false ), -- É homem?
   (11, 2,false ), -- Usa óculos?
   (11, 3, false), -- É alto?
   (11, 4, false), -- Tem cabelo cacheado?
   (11, 5,false ), -- Tem cabelo curto?
   (11, 6, false ), -- Tem cabelo escuro?
   (11, 7,false ), -- É da zona rural?
   (11, 8,true ), -- Conversa muito?
   (11, 9,false ), -- É tímido?
   (11, 10, false ), -- Joga futebol?
   (11, 11, true ), -- Pratica esporte?
   (11, 12, false), -- Joga videogame?
   (11, 13, false), -- Participa de olimpíadas?
   (11, 14, true), -- Costuma faltar aula?
   (11, 15, true), -- Chega cedo à escola?
   (11, 16, true), -- É extrovertido?
   (11, 17, false), -- É estudioso?
   (11, 18, true), -- É engraçado?
   (11, 19, true), -- É bagunceiro?
   (11, 20, true), -- Conhece muita gente?

-- ======================================
-- Taysla - ID 12
-- ======================================
   (12, 1, false), -- É homem?
   (12, 2, true), -- Usa óculos?
   (12, 3, true), -- É alto?
   (12, 4, true), -- Tem cabelo cacheado?
   (12, 5, false), -- Tem cabelo curto?
   (12, 6, true), -- Tem cabelo escuro?
   (12, 7, false), -- É da zona rural?
   (12, 8, true), -- Conversa muito?
   (12, 9, false), -- É tímido?
   (12, 10, false), -- Joga futebol?
   (12, 11, false), -- Pratica esporte?
   (12, 12, false), -- Joga videogame?
   (12, 13, false), -- Participa de olimpíadas?
   (12, 14, false), -- Costuma faltar aula?
   (12, 15, true), -- Chega cedo à escola?
   (12, 16, true), -- É extrovertido?
   (12, 17, false), -- É estudioso?
   (12, 18, false), -- É engraçado?
   (12, 19, false), -- É bagunceiro?
   (12, 20, false), -- Conhece muita gente?

-- ======================================
-- Eduarda - ID 13
-- ======================================
   (13, 1, false), -- É homem?
   (13, 2, false), -- Usa óculos?
   (13, 3, false), -- É alto?
   (13, 4, false), -- Tem cabelo cacheado?
   (13, 5, false), -- Tem cabelo curto?
   (13, 6, true), -- Tem cabelo escuro?
   (13, 7, false), -- É da zona rural?
   (13, 8, false), -- Conversa muito?
   (13, 9, false), -- É tímido?
   (13, 10, false), -- Joga futebol?
   (13, 11, false), -- Pratica esporte?
   (13, 12, false), -- Joga videogame?
   (13, 13, false), -- Participa de olimpíadas?
   (13, 14, false), -- Costuma faltar aula?
   (13, 15, true), -- Chega cedo à escola?
   (13, 16, true), -- É extrovertido?
   (13, 17, true), -- É estudioso?
   (13, 18, false), -- É engraçado?
   (13, 19, false), -- É bagunceiro?
   (13, 20, false), -- Conhece muita gente?

-- ======================================
-- Richard - ID 14
-- ======================================
   (14, 1, true), -- É homem?
   (14, 2, false), -- Usa óculos?
   (14, 3, true), -- É alto?
   (14, 4, true), -- Tem cabelo cacheado?
   (14, 5, false), -- Tem cabelo curto?
   (14, 6, false), -- Tem cabelo escuro?
   (14, 7, false), -- É da zona rural?
   (14, 8, true), -- Conversa muito?
   (14, 9, false), -- É tímido?
   (14, 10, false), -- Joga futebol?
   (14, 11, true), -- Pratica esporte?
   (14, 12, false), -- Joga videogame?
   (14, 13, false), -- Participa de olimpíadas?
   (14, 14, true), -- Costuma faltar aula?
   (14, 15, false), -- Chega cedo à escola?
   (14, 16, true), -- É extrovertido?
   (14, 17, false), -- É estudioso?
   (14, 18, true), -- É engraçado?
   (14, 19, true), -- É bagunceiro?
   (14, 20, true), -- Conhece muita gente?

-- ======================================
-- Ana Julia - ID 15
-- ======================================
   (15, 1, false), -- É homem?
   (15, 2, true), -- Usa óculos?
   (15, 3, false), -- É alto?
   (15, 4, false), -- Tem cabelo cacheado?
   (15, 5, false), -- Tem cabelo curto?
   (15, 6, false), -- Tem cabelo escuro?
   (15, 7, false), -- É da zona rural?
   (15, 8, false), -- Conversa muito?
   (15, 9, true), -- É tímido?
   (15, 10, false), -- Joga futebol?
   (15, 11, false), -- Pratica esporte?
   (15, 12, false), -- Joga videogame?
   (15, 13, false), -- Participa de olimpíadas?
   (15, 14, false), -- Costuma faltar aula?
   (15, 15, true), -- Chega cedo à escola?
   (15, 16, false), -- É extrovertido?
   (15, 17, true), -- É estudioso?
   (15, 18, false), -- É engraçado?
   (15, 19, false), -- É bagunceiro?
   (15, 20, false), -- Conhece muita gente?

-- ======================================
-- Ana Kaline - ID 16
-- ======================================
   (16, 1, false), -- É homem?
   (16, 2, false), -- Usa óculos?
   (16, 3, true), -- É alto?
   (16, 4, false), -- Tem cabelo cacheado?
   (16, 5, false), -- Tem cabelo curto?
   (16, 6, true), -- Tem cabelo escuro?
   (16, 7, false), -- É da zona rural?
   (16, 8, false), -- Conversa muito?
   (16, 9, false), -- É tímido?
   (16, 10, false), -- Joga futebol?
   (16, 11, false), -- Pratica esporte?
   (16, 12, false), -- Joga videogame?
   (16, 13, true), -- Participa de olimpíadas?
   (16, 14, false), -- Costuma faltar aula?
   (16, 15, true), -- Chega cedo à escola?
   (16, 16, false), -- É extrovertido?
   (16, 17, true), -- É estudioso?
   (16, 18, false), -- É engraçado?
   (16, 19, false), -- É bagunceiro?
   (16, 20, false), -- Conhece muita gente?

-- ======================================
-- Ana Mirela - ID 17
-- ======================================
   (17, 1, false), -- É homem?
   (17, 2, false), -- Usa óculos?
   (17, 3, false), -- É alto?
   (17, 4, true), -- Tem cabelo cacheado?
   (17, 5, false), -- Tem cabelo curto?
   (17, 6, true), -- Tem cabelo escuro?
   (17, 7, false), -- É da zona rural?
   (17, 8,false ), -- Conversa muito?
   (17, 9, true), -- É tímido?
   (17, 10, false), -- Joga futebol?
   (17, 11,false ), -- Pratica esporte?
   (17, 12,false ), -- Joga videogame?
   (17, 13, false), -- Participa de olimpíadas?
   (17, 14, false), -- Costuma faltar aula?
   (17, 15, true), -- Chega cedo à escola?
   (17, 16,false ), -- É extrovertido?
   (17, 17, true), -- É estudioso?
   (17, 18, false), -- É engraçado?
   (17, 19, false), -- É bagunceiro?
   (17, 20, false), -- Conhece muita gente?

-- ======================================
-- Ana Thavine - ID 18
-- ======================================
   (18, 1, false), -- É homem?
   (18, 2, true), -- Usa óculos?
   (18, 3, false), -- É alto?
   (18, 4, false), -- Tem cabelo cacheado?
   (18, 5, false), -- Tem cabelo curto?
   (18, 6, true), -- Tem cabelo escuro?
   (18, 7, false), -- É da zona rural?
   (18, 8, false), -- Conversa muito?
   (18, 9, false), -- É tímido?
   (18, 10, false), -- Joga futebol?
   (18, 11, false), -- Pratica esporte?
   (18, 12, false), -- Joga videogame?
   (18, 13, true), -- Participa de olimpíadas?
   (18, 14,false ), -- Costuma faltar aula?
   (18, 15, true), -- Chega cedo à escola?
   (18, 16, false), -- É extrovertido?
   (18, 17, true), -- É estudioso?
   (18, 18, false), -- É engraçado?
   (18, 19, false), -- É bagunceiro?
   (18, 20, false), -- Conhece muita gente?

-- ======================================
-- Ana Vitoria - ID 19
-- ======================================
   (19, 1, false), -- É homem?
   (19, 2, false), -- Usa óculos?
   (19, 3, false), -- É alto?
   (19, 4, false), -- Tem cabelo cacheado?
   (19, 5, false), -- Tem cabelo curto?
   (19, 6, false), -- Tem cabelo escuro?
   (19, 7,false ), -- É da zona rural?
   (19, 8, false), -- Conversa muito?
   (19, 9, false), -- É tímido?
   (19, 10, false), -- Joga futebol?
   (19, 11, false), -- Pratica esporte?
   (19, 12, false), -- Joga videogame?
   (19, 13, true), -- Participa de olimpíadas?
   (19, 14, false), -- Costuma faltar aula?
   (19, 15, true), -- Chega cedo à escola?
   (19, 16, true), -- É extrovertido?
   (19, 17, true), -- É estudioso?
   (19, 18, false), -- É engraçado?
   (19, 19, false), -- É bagunceiro?
   (19, 20, true), -- Conhece muita gente?

-- ======================================
-- Antonio Samuel - ID 20
-- ======================================
   (20, 1, true), -- É homem?
   (20, 2, false), -- Usa óculos?
   (20, 3, false), -- É alto?
   (20, 4, false), -- Tem cabelo cacheado?
   (20, 5, true), -- Tem cabelo curto?
   (20, 6, true), -- Tem cabelo escuro?
   (20, 7, true), -- É da zona rural?
   (20, 8, false), -- Conversa muito?
   (20, 9, false), -- É tímido?
   (20, 10, false), -- Joga futebol?
   (20, 11, true), -- Pratica esporte?
   (20, 12, false), -- Joga videogame?
   (20, 13, true), -- Participa de olimpíadas?
   (20, 14, false), -- Costuma faltar aula?
   (20, 15, true), -- Chega cedo à escola?
   (20, 16, true), -- É extrovertido?
   (20, 17, true), -- É estudioso?
   (20, 18, true), -- É engraçado?
   (20, 19,false ), -- É bagunceiro?
   (20, 20, false), -- Conhece muita gente?

-- ======================================
-- Arthur Aragao - ID 21
-- ======================================
   (21, 1,true ), -- É homem?
   (21, 2, false), -- Usa óculos?
   (21, 3, false), -- É alto?
   (21, 4, true), -- Tem cabelo cacheado?
   (21, 5, false), -- Tem cabelo curto?
   (21, 6, true), -- Tem cabelo escuro?
   (21, 7, false), -- É da zona rural?
   (21, 8, false), -- Conversa muito?
   (21, 9, true), -- É tímido?
   (21, 10, false), -- Joga futebol?
   (21, 11, false), -- Pratica esporte?
   (21, 12, false), -- Joga videogame?
   (21, 13, false), -- Participa de olimpíadas?
   (21, 14, true), -- Costuma faltar aula?
   (21, 15, false), -- Chega cedo à escola?
   (21, 16, false), -- É extrovertido?
   (21, 17, false), -- É estudioso?
   (21, 18,false ), -- É engraçado?
   (21, 19, false), -- É bagunceiro?
   (21, 20, false), -- Conhece muita gente?

-- ======================================
-- Davi Juvenal - ID 22
-- ======================================
   (22, 1, true), -- É homem?
   (22, 2, false), -- Usa óculos?
   (22, 3, false), -- É alto?
   (22, 4, false), -- Tem cabelo cacheado?
   (22, 5,true ), -- Tem cabelo curto?
   (22, 6, true), -- Tem cabelo escuro?
   (22, 7, false), -- É da zona rural?
   (22, 8, true), -- Conversa muito?
   (22, 9,false ), -- É tímido?
   (22, 10, false), -- Joga futebol?
   (22, 11, false), -- Pratica esporte?
   (22, 12, false), -- Joga videogame?
   (22, 13, false), -- Participa de olimpíadas?
   (22, 14, true), -- Costuma faltar aula?
   (22, 15, true), -- Chega cedo à escola?
   (22, 16, false), -- É extrovertido?
   (22, 17, false), -- É estudioso?
   (22, 18, false), -- É engraçado?
   (22, 19, false), -- É bagunceiro?
   (22, 20, true), -- Conhece muita gente?

-- ======================================
-- Davi Ribeiro - ID 23
-- ======================================
   (23, 1, true), -- É homem?
   (23, 2, true), -- Usa óculos?
   (23, 3, true), -- É alto?
   (23, 4, false), -- Tem cabelo cacheado?
   (23, 5, false), -- Tem cabelo curto?
   (23, 6, true), -- Tem cabelo escuro?
   (23, 7, false), -- É da zona rural?
   (23, 8, false), -- Conversa muito?
   (23, 9, false), -- É tímido?
   (23, 10,false), -- Joga futebol?
   (23, 11, false), -- Pratica esporte?
   (23, 12, false), -- Joga videogame?
   (23, 13, false), -- Participa de olimpíadas?
   (23, 14, false), -- Costuma faltar aula?
   (23, 15, true), -- Chega cedo à escola?
   (23, 16, false), -- É extrovertido?
   (23, 17, false), -- É estudioso?
   (23, 18, false), -- É engraçado?
   (23, 19, false), -- É bagunceiro?
   (23, 20, false), -- Conhece muita gente?

-- ======================================
-- Eric - ID 24
-- ======================================
   (24, 1, true), -- É homem?
   (24, 2, false), -- Usa óculos?
   (24, 3, false), -- É alto?
   (24, 4,false ), -- Tem cabelo cacheado?
   (24, 5,true ), -- Tem cabelo curto?
   (24, 6, false), -- Tem cabelo escuro?
   (24, 7, false), -- É da zona rural?
   (24, 8, true), -- Conversa muito?
   (24, 9, false), -- É tímido?
   (24, 10, true), -- Joga futebol?
   (24, 11, false), -- Pratica esporte?
   (24, 12, false), -- Joga videogame?
   (24, 13, false), -- Participa de olimpíadas?
   (24, 14, true), -- Costuma faltar aula?
   (24, 15, true), -- Chega cedo à escola?
   (24, 16, true ), -- É extrovertido?
   (24, 17, false), -- É estudioso?
   (24, 18, false), -- É engraçado?
   (24, 19, true), -- É bagunceiro?
   (24, 20, true), -- Conhece muita gente?

-- ======================================
-- Elitania - ID 25
-- ======================================
   (25, 1,false ), -- É homem?
   (25, 2, false), -- Usa óculos?
   (25, 3, false), -- É alto?
   (25, 4, false), -- Tem cabelo cacheado?
   (25, 5, false), -- Tem cabelo curto?
   (25, 6, true), -- Tem cabelo escuro?
   (25, 7, false), -- É da zona rural?
   (25, 8, false), -- Conversa muito?
   (25, 9, true), -- É tímido?
   (25, 10, false), -- Joga futebol?
   (25, 11, false), -- Pratica esporte?
   (25, 12, false), -- Joga videogame?
   (25, 13, false), -- Participa de olimpíadas?
   (25, 14, false), -- Costuma faltar aula?
   (25, 15, true), -- Chega cedo à escola?
   (25, 16, false), -- É extrovertido?
   (25, 17,true ), -- É estudioso?
   (25, 18, false), -- É engraçado?
   (25, 19, false), -- É bagunceiro?
   (25, 20, false), -- Conhece muita gente?

-- ======================================
-- Francisco Levy - ID 26
-- ======================================
   (26, 1, true), -- É homem?
   (26, 2, false), -- Usa óculos?
   (26, 3, true), -- É alto?
   (26, 4, false), -- Tem cabelo cacheado?
   (26, 5, true), -- Tem cabelo curto?
   (26, 6, true), -- Tem cabelo escuro?
   (26, 7, true), -- É da zona rural?
   (26, 8, true), -- Conversa muito?
   (26, 9, false), -- É tímido?
   (26, 10, true), -- Joga futebol?
   (26, 11, true), -- Pratica esporte?
   (26, 12, true), -- Joga videogame?
   (26, 13, false), -- Participa de olimpíadas?
   (26, 14, false), -- Costuma faltar aula?
   (26, 15, true), -- Chega cedo à escola?
   (26, 16, true), -- É extrovertido?
   (26, 17, false), -- É estudioso?
   (26, 18, true), -- É engraçado?
   (26, 19, true), -- É bagunceiro?
   (26, 20,true ), -- Conhece muita gente?

-- ======================================
-- Francisco Vinicius - ID 27
-- ======================================
   (27, 1, true), -- É homem?
   (27, 2, true), -- Usa óculos?
   (27, 3, true), -- É alto?
   (27, 4, false), -- Tem cabelo cacheado?
   (27, 5, true), -- Tem cabelo curto?
   (27, 6, true), -- Tem cabelo escuro?
   (27, 7, true), -- É da zona rural?
   (27, 8, false), -- Conversa muito?
   (27, 9, true), -- É tímido?
   (27, 10, false), -- Joga futebol?
   (27, 11, false), -- Pratica esporte?
   (27, 12, false), -- Joga videogame?
   (27, 13, false), -- Participa de olimpíadas?
   (27, 14, false), -- Costuma faltar aula?
   (27, 15, true), -- Chega cedo à escola?
   (27, 16, false), -- É extrovertido?
   (27, 17, true), -- É estudioso?
   (27, 18, false), -- É engraçado?
   (27, 19, false), -- É bagunceiro?
   (27, 20,false ), -- Conhece muita gente?

-- ======================================
-- Joao Pedro - ID 28
-- ======================================
   (28, 1, true), -- É homem?
   (28, 2,true ), -- Usa óculos?
   (28, 3, false), -- É alto?
   (28, 4,false ), -- Tem cabelo cacheado?
   (28, 5,true ), -- Tem cabelo curto?
   (28, 6, true), -- Tem cabelo escuro?
   (28, 7, false), -- É da zona rural?
   (28, 8, true), -- Conversa muito?
   (28, 9, false), -- É tímido?
   (28, 10, true), -- Joga futebol?
   (28, 11, false), -- Pratica esporte?
   (28, 12, false), -- Joga videogame?
   (28, 13, false), -- Participa de olimpíadas?
   (28, 14, true), -- Costuma faltar aula?
   (28, 15, true), -- Chega cedo à escola?
   (28, 16, true), -- É extrovertido?
   (28, 17, false), -- É estudioso?
   (28, 18, true), -- É engraçado?
   (28, 19, true), -- É bagunceiro?
   (28, 20,true ), -- Conhece muita gente?

-- ======================================
-- Jose Carneiro - ID 29
-- ======================================
   (29, 1, true), -- É homem?
   (29, 2,false ), -- Usa óculos?
   (29, 3, false), -- É alto?
   (29, 4, false), -- Tem cabelo cacheado?
   (29, 5, false), -- Tem cabelo curto?
   (29, 6, true), -- Tem cabelo escuro?
   (29, 7, false), -- É da zona rural?
   (29, 8, true), -- Conversa muito?
   (29, 9, false), -- É tímido?
   (29, 10, false), -- Joga futebol?
   (29, 11, false), -- Pratica esporte?
   (29, 12, false), -- Joga videogame?
   (29, 13, false), -- Participa de olimpíadas?
   (29, 14, false), -- Costuma faltar aula?
   (29, 15, true), -- Chega cedo à escola?
   (29, 16, true), -- É extrovertido?
   (29, 17, false), -- É estudioso?
   (29, 18, true), -- É engraçado?
   (29, 19, false), -- É bagunceiro?
   (29, 20, true), -- Conhece muita gente?

-- ======================================
-- Lara - ID 30
-- ======================================
   (30, 1, false), -- É homem?
   (30, 2, false), -- Usa óculos?
   (30, 3, false), -- É alto?
   (30, 4, false), -- Tem cabelo cacheado?
   (30, 5, false), -- Tem cabelo curto?
   (30, 6, true), -- Tem cabelo escuro?
   (30, 7, false), -- É da zona rural?
   (30, 8, false), -- Conversa muito?
   (30, 9, false), -- É tímido?
   (30, 10, false), -- Joga futebol?
   (30, 11, false), -- Pratica esporte?
   (30, 12, false), -- Joga videogame?
   (30, 13, false), -- Participa de olimpíadas?
   (30, 14, false), -- Costuma faltar aula?
   (30, 15, true), -- Chega cedo à escola?
   (30, 16, false), -- É extrovertido?
   (30, 17, true), -- É estudioso?
   (30, 18, false), -- É engraçado?
   (30, 19,false ), -- É bagunceiro?
   (30, 20, false), -- Conhece muita gente?

-- ======================================
-- Lindomar - ID 31
-- ======================================
   (31, 1, true), -- É homem?
   (31, 2, false), -- Usa óculos?
   (31, 3, false), -- É alto?
   (31, 4, false), -- Tem cabelo cacheado?
   (31, 5, true), -- Tem cabelo curto?
   (31, 6, true), -- Tem cabelo escuro?
   (31, 7, false), -- É da zona rural?
   (31, 8,false ), -- Conversa muito?
   (31, 9, true), -- É tímido?
   (31, 10, false), -- Joga futebol?
   (31, 11, false), -- Pratica esporte?
   (31, 12, false), -- Joga videogame?
   (31, 13, false), -- Participa de olimpíadas?
   (31, 14, false), -- Costuma faltar aula?
   (31, 15, true), -- Chega cedo à escola?
   (31, 16, false), -- É extrovertido?
   (31, 17, false), -- É estudioso?
   (31, 18, false), -- É engraçado?
   (31, 19, false), -- É bagunceiro?
   (31, 20, false), -- Conhece muita gente?

-- ======================================
-- Luis Otavio - ID 32
-- ======================================
   (32, 1, true), -- É homem?
   (32, 2, false), -- Usa óculos?
   (32, 3, false), -- É alto?
   (32, 4, false), -- Tem cabelo cacheado?
   (32, 5, true), -- Tem cabelo curto?
   (32, 6, true), -- Tem cabelo escuro?
   (32, 7, true), -- É da zona rural?
   (32, 8,false ), -- Conversa muito?
   (32, 9, false), -- É tímido?
   (32, 10,false ), -- Joga futebol?
   (32, 11, false), -- Pratica esporte?
   (32, 12, false), -- Joga videogame?
   (32, 13, false), -- Participa de olimpíadas?
   (32, 14, false), -- Costuma faltar aula?
   (32, 15, true), -- Chega cedo à escola?
   (32, 16, false), -- É extrovertido?
   (32, 17,true ), -- É estudioso?
   (32, 18, false), -- É engraçado?
   (32, 19, false), -- É bagunceiro?
   (32, 20, false), -- Conhece muita gente?

-- ======================================
-- Marcos Vinicius - ID 33
-- ======================================
   (33, 1,true ), -- É homem?
   (33, 2, false), -- Usa óculos?
   (33, 3, false), -- É alto?
   (33, 4, false), -- Tem cabelo cacheado?
   (33, 5, true), -- Tem cabelo curto?
   (33, 6, true), -- Tem cabelo escuro?
   (33, 7, true), -- É da zona rural?
   (33, 8,true ), -- Conversa muito?
   (33, 9, false), -- É tímido?
   (33, 10, true), -- Joga futebol?
   (33, 11, true), -- Pratica esporte?
   (33, 12, false), -- Joga videogame?
   (33, 13, false), -- Participa de olimpíadas?
   (33, 14, true), -- Costuma faltar aula?
   (33, 15, true), -- Chega cedo à escola?
   (33, 16, true), -- É extrovertido?
   (33, 17, false), -- É estudioso?
   (33, 18, true), -- É engraçado?
   (33, 19, true), -- É bagunceiro?
   (33, 20, true), -- Conhece muita gente?

-- ======================================
-- Maria Clara - ID 34
-- ======================================
   (34, 1, false), -- É homem?
   (34, 2, true), -- Usa óculos?
   (34, 3, false), -- É alto?
   (34, 4, false), -- Tem cabelo cacheado?
   (34, 5, false), -- Tem cabelo curto?
   (34, 6, false), -- Tem cabelo escuro?
   (34, 7, true), -- É da zona rural?
   (34, 8, true), -- Conversa muito?
   (34, 9, false), -- É tímido?
   (34, 10, false), -- Joga futebol?
   (34, 11, false), -- Pratica esporte?
   (34, 12, false), -- Joga videogame?
   (34, 13, false), -- Participa de olimpíadas?
   (34, 14, false), -- Costuma faltar aula?
   (34, 15,true ), -- Chega cedo à escola?
   (34, 16, false), -- É extrovertido?
   (34, 17, false), -- É estudioso?
   (34, 18,false ), -- É engraçado?
   (34, 19, false), -- É bagunceiro?
   (34, 20, true), -- Conhece muita gente?

-- ======================================
-- Mariana - ID 35
-- ======================================
   (35, 1, false), -- É homem?
   (35, 2, false), -- Usa óculos?
   (35, 3, false), -- É alto?
   (35, 4, false), -- Tem cabelo cacheado?
   (35, 5, false), -- Tem cabelo curto?
   (35, 6, true), -- Tem cabelo escuro?
   (35, 7, false), -- É da zona rural?
   (35, 8, false), -- Conversa muito?
   (35, 9, false), -- É tímido?
   (35, 10,false ), -- Joga futebol?
   (35, 11, false), -- Pratica esporte?
   (35, 12, false), -- Joga videogame?
   (35, 13, false), -- Participa de olimpíadas?
   (35, 14, false), -- Costuma faltar aula?
   (35, 15, true), -- Chega cedo à escola?
   (35, 16, false), -- É extrovertido?
   (35, 17, false), -- É estudioso?
   (35, 18, false), -- É engraçado?
   (35, 19, false), -- É bagunceiro?
   (35, 20, false), -- Conhece muita gente?

-- ======================================
-- Maya - ID 36
-- ======================================
   (36, 1, true), -- É homem?
   (36, 2, false), -- Usa óculos?
   (36, 3, true), -- É alto?
   (36, 4, false), -- Tem cabelo cacheado?
   (36, 5, true), -- Tem cabelo curto?
   (36, 6, true), -- Tem cabelo escuro?
   (36, 7, false), -- É da zona rural?
   (36, 8, false), -- Conversa muito?
   (36, 9, false), -- É tímido?
   (36, 10, false), -- Joga futebol?
   (36, 11, false), -- Pratica esporte?
   (36, 12, false), -- Joga videogame?
   (36, 13, true), -- Participa de olimpíadas?
   (36, 14, false), -- Costuma faltar aula?
   (36, 15, true), -- Chega cedo à escola?
   (36, 16, false), -- É extrovertido?
   (36, 17, true), -- É estudioso?
   (36, 18, false), -- É engraçado?
   (36, 19, false), -- É bagunceiro?
   (36, 20, false), -- Conhece muita gente?

-- ======================================
-- Misaias - ID 37
-- ======================================
   (37, 1, true), -- É homem?
   (37, 2, false), -- Usa óculos?
   (37, 3, false), -- É alto?
   (37, 4, false), -- Tem cabelo cacheado?
   (37, 5,false ), -- Tem cabelo curto?
   (37, 6, false), -- Tem cabelo escuro?
   (37, 7, false), -- É da zona rural?
   (37, 8,true ), -- Conversa muito?
   (37, 9, false), -- É tímido?
   (37, 10, false), -- Joga futebol?
   (37, 11, true), -- Pratica esporte?
   (37, 12, false), -- Joga videogame?
   (37, 13, false), -- Participa de olimpíadas?
   (37, 14, false), -- Costuma faltar aula?
   (37, 15, true), -- Chega cedo à escola?
   (37, 16, true), -- É extrovertido?
   (37, 17, false), -- É estudioso?
   (37, 18, true), -- É engraçado?
   (37, 19, true), -- É bagunceiro?
   (37, 20, true), -- Conhece muita gente?

-- ======================================
-- Pedro Ewerton - ID 38
-- ======================================
   (38, 1, true), -- É homem?
   (38, 2, false), -- Usa óculos?
   (38, 3, true), -- É alto?
   (38, 4,false ), -- Tem cabelo cacheado?
   (38, 5, true), -- Tem cabelo curto?
   (38, 6, true), -- Tem cabelo escuro?
   (38, 7, false), -- É da zona rural?
   (38, 8, true), -- Conversa muito?
   (38, 9, false), -- É tímido?
   (38, 10, false), -- Joga futebol?
   (38, 11, false), -- Pratica esporte?
   (38, 12, false), -- Joga videogame?
   (38, 13, false), -- Participa de olimpíadas?
   (38, 14, false), -- Costuma faltar aula?
   (38, 15, true), -- Chega cedo à escola?
   (38, 16,false ), -- É extrovertido?
   (38, 17, true), -- É estudioso?
   (38, 18, false), -- É engraçado?
   (38, 19, false), -- É bagunceiro?
   (38, 20, false), -- Conhece muita gente?

-- ======================================
-- Rafaela - ID 39
-- ======================================
   (39, 1, false), -- É homem?
   (39, 2, true), -- Usa óculos?
   (39, 3, true), -- É alto?
   (39, 4, false), -- Tem cabelo cacheado?
   (39, 5, false), -- Tem cabelo curto?
   (39, 6, true), -- Tem cabelo escuro?
   (39, 7, true), -- É da zona rural?
   (39, 8, true), -- Conversa muito?
   (39, 9, false), -- É tímido?
   (39, 10, false), -- Joga futebol?
   (39, 11, false), -- Pratica esporte?
   (39, 12, false), -- Joga videogame?
   (39, 13, false), -- Participa de olimpíadas?
   (39, 14, false), -- Costuma faltar aula?
   (39, 15, true), -- Chega cedo à escola?
   (39, 16, true), -- É extrovertido?
   (39, 17, false), -- É estudioso?
   (39, 18, true), -- É engraçado?
   (39, 19, false), -- É bagunceiro?
   (39, 20, true), -- Conhece muita gente?

-- ======================================
-- Ruan - ID 40
-- ======================================
   (40, 1, true), -- É homem?
   (40, 2, false), -- Usa óculos?
   (40, 3, false), -- É alto?
   (40, 4, false), -- Tem cabelo cacheado?
   (40, 5, true), -- Tem cabelo curto?
   (40, 6, true), -- Tem cabelo escuro?
   (40, 7, false), -- É da zona rural?
   (40, 8, false), -- Conversa muito?
   (40, 9, true), -- É tímido?
   (40, 10, false), -- Joga futebol?
   (40, 11, false), -- Pratica esporte?
   (40, 12, false), -- Joga videogame?
   (40, 13, false), -- Participa de olimpíadas?
   (40, 14, false), -- Costuma faltar aula?
   (40, 15, true), -- Chega cedo à escola?
   (40, 16, false), -- É extrovertido?
   (40, 17, false), -- É estudioso?
   (40, 18, false), -- É engraçado?
   (40, 19, false), -- É bagunceiro?
   (40, 20, false), -- Conhece muita gente?

-- ======================================
-- Cristina - ID 41
-- ======================================
   (41, 1, false), -- É homem?
   (41, 2, false), -- Usa óculos?
   (41, 3, false), -- É alto?
   (41, 4, false), -- Tem cabelo cacheado?
   (41, 5, false), -- Tem cabelo curto?
   (41, 6, false), -- Tem cabelo escuro?
   (41, 7, false), -- É da zona rural?
   (41, 8, false), -- Conversa muito?
   (41, 9, false), -- É tímido?
   (41, 10,false ), -- Joga futebol?
   (41, 11, false), -- Pratica esporte?
   (41, 12, false), -- Joga videogame?
   (41, 13,false ), -- Participa de olimpíadas?
   (41, 14, false), -- Costuma faltar aula?
   (41, 15, true), -- Chega cedo à escola?
   (41, 16, false ), -- É extrovertido?
   (41, 17, true), -- É estudioso?
   (41, 18, false), -- É engraçado?
   (41, 19,false ), -- É bagunceiro?
   (41, 20, true), -- Conhece muita gente?

-- ======================================
-- Junin - ID 42
-- ======================================
   (42, 1, true), -- É homem?
   (42, 2, true), -- Usa óculos?
   (42, 3,true ), -- É alto?
   (42, 4, false), -- Tem cabelo cacheado?
   (42, 5, true), -- Tem cabelo curto?
   (42, 6, true), -- Tem cabelo escuro?
   (42, 7, true), -- É da zona rural?
   (42, 8, false), -- Conversa muito?
   (42, 9, false), -- É tímido?
   (42, 10, true), -- Joga futebol?
   (42, 11, true), -- Pratica esporte?
   (42, 12, false), -- Joga videogame?
   (42, 13, false), -- Participa de olimpíadas?
   (42, 14, false), -- Costuma faltar aula?
   (42, 15, true), -- Chega cedo à escola?
   (42, 16, false), -- É extrovertido?
   (42, 17, true), -- É estudioso?
   (42, 18, false), -- É engraçado?
   (42, 19, false), -- É bagunceiro?
   (42, 20, true); -- Conhece muita gente?