-- apelidar colunas
-- nome, fabricante, dtCadastro
-- Nome, Marca, Data de Cadastro


select
`nome` as 'Nome do Produto',
`fabricante` as 'Marca',
`dtCadastro` as 'Data de Cadastro'
from `produtos`;


-- Ordem alfabética (A-Z ou 0-9)
-- Listar os produtos em ordem alfabética

select `nome`, `preço`
from `produtos` order by `nome` asc;


-- ordenar pelo preço (alto -> baixo) e limitar para o top 5 mais caros
select `nome` as `Nome`,
`preço` as `Preço`
from `produtos` order by `preço` desc limit 5;


select `nome` as `Nome`,
`preço` as `Preço`
from `produtos` order by `preço` desc limit 0,5;


select `nome` as `Nome`,
`preço` as `Preço`
from `produtos` order by `preço` desc limit 5,5;


select `nome` as `Nome`,
`preço` as `Preço`
from `produtos` order by `preço` desc limit 10,5;

/*
====================================================
EXERCÍCIOS DE SELECT - PARTE 1
BANCO DE DADOS: clinica_veterinaria
SINTAXE: MariaDB
====================================================
*/

USE clinica_veterinaria;


-- ==================================================
-- SEÇÃO 1: RENOMEAÇÃO DE COLUNAS (AS)
-- ==================================================

-- 1 - Tutores
SELECT nome AS `Nome do Tutor`,
       cidade AS `Cidade`
FROM Tutores;


-- 2 - Veterinários
SELECT nome AS `Veterinário(a)`,
       especialidade AS `Especialidade`
FROM Veterinarios;


-- 3 - Animais e Peso
SELECT nome AS `Nome do Animal`,
       peso_kg AS `Peso (kg)`
FROM Animais;


-- 4 - Consultas
SELECT dtConsulta AS `Data da Consulta`,
       custo AS `Valor (R$)`
FROM Consultas;


-- ==================================================
-- SEÇÃO 2: ORDENAÇÃO DE RESULTADOS (ORDER BY)
-- ==================================================

-- 5 - Tutores em ordem alfabética (A-Z)
SELECT nome
FROM Tutores
ORDER BY nome ASC;


-- 6 - Animais em ordem alfabética inversa (Z-A)
SELECT nome
FROM Animais
ORDER BY nome DESC;


-- 7 - Animais mais pesados
SELECT nome, peso_kg
FROM Animais
ORDER BY peso_kg DESC;


-- 8 - Consultas mais baratas
SELECT motivo, custo
FROM Consultas
ORDER BY custo ASC;


-- 9 - Animais mais novos
SELECT nome, dtNascimento
FROM Animais
ORDER BY dtNascimento DESC;


-- 10 - Animais mais velhos
SELECT nome, dtNascimento
FROM Animais
ORDER BY dtNascimento ASC;


-- 11 - Consultas mais recentes
SELECT motivo, dtConsulta
FROM Consultas
ORDER BY dtConsulta DESC;


-- 12 - Ordem dupla: espécie e depois nome
SELECT nome, especie
FROM Animais
ORDER BY especie ASC, nome ASC;


-- ==================================================
-- SEÇÃO 3: LIMITAÇÃO DE RESULTADOS (LIMIT)
-- ==================================================

-- 13 - Os 5 primeiros animais cadastrados
SELECT *
FROM Animais
ORDER BY idAnimal ASC
LIMIT 5;


-- 14 - As 3 primeiras consultas registradas
SELECT *
FROM Consultas
ORDER BY idConsulta ASC
LIMIT 3;


-- 15 - Paginação - Página 1
-- Mostra os 2 primeiros tutores
SELECT *
FROM Tutores
ORDER BY idTutor ASC
LIMIT 0, 2;


-- 16 - Paginação - Página 2
-- Pula os 2 primeiros e mostra os 2 seguintes
SELECT *
FROM Tutores
ORDER BY idTutor ASC
LIMIT 2, 2;


-- ==================================================
-- SEÇÃO 4: DESAFIOS COMBINADOS
-- AS + ORDER BY + LIMIT
-- ==================================================

-- 17 - O Animal Mais Pesado
SELECT nome AS `Animal Mais Pesado`,
       peso_kg AS `Peso (kg)`
FROM Animais
ORDER BY peso_kg DESC
LIMIT 1;


-- 18 - A Consulta Mais Cara
SELECT motivo AS `Motivo`,
       diagnostico AS `Diagnóstico`,
       custo AS `Valor`
FROM Consultas
ORDER BY custo DESC
LIMIT 1;


-- 19 - Top 3 Animais Mais Novos
SELECT nome AS `Nome`,
       especie AS `Espécie`,
       dtNascimento AS `Nascimento`
FROM Animais
ORDER BY dtNascimento DESC
LIMIT 3;


-- 20 - As 2 Consultas Mais Antigas
SELECT dtConsulta AS `Data`,
       motivo AS `Motivo`
FROM Consultas
ORDER BY dtConsulta ASC
LIMIT 2;
