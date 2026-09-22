-- 1 
SELECT * FROM `Animais`;


-- 2 
SELECT `nome`, `email`, `cidade` FROM `Tutores`;


-- 3 
SELECT `nome`, `especialidade` FROM `Veterinarios`;


-- 4 
SELECT `motivo`, `custo` FROM `Consultas`;



-- 5 
SELECT * FROM `Animais`
WHERE `especie` = 'Gato';



-- 6 
SELECT `nome`, `peso_kg` FROM `Animais`
WHERE `peso_kg` > 20;


-- 7 
SELECT * FROM `Consultas`
WHERE `custo` = 150.00;


-- 8 
SELECT `nome`, `dtNascimento` FROM `Animais`
WHERE `dtNascimento` >= '2022-01-01';


-- 9 
SELECT `nome`, `raca` FROM `Animais`
WHERE `raca` <> 'Labrador';


-- 10
SELECT * FROM `Animais`
WHERE `especie` = 'Cachorro'
AND `peso_kg` < 10;


-- 11 
SELECT * FROM `Consultas`
WHERE `dtConsulta` >= '2025-01-01'
AND `dtConsulta` < '2026-01-01'
AND `custo` > 180.00;



-- 12 
SELECT * FROM `Animais`
WHERE `especie` = 'Cachorro'
OR `especie` = 'Gato';


-- 13 
SELECT * FROM `Tutores`
WHERE `cidade` = 'São Paulo'
OR `cidade` = 'Rio de Janeiro';


-- 14 
SELECT * FROM `Animais`
WHERE (`especie` = 'Cachorro' AND `peso_kg` > 30)
OR (`especie` = 'Gato' AND `peso_kg` < 5);


-- 15 
SELECT `nome`, `telefone` FROM `Tutores`
WHERE `nome` LIKE 'A%';


-- 16 
SELECT `nome`, `raca` FROM `Animais`
WHERE `raca` LIKE '%Retriever%';



-- 17 
SELECT `nome`, `email`, `cidade` FROM `Tutores`
WHERE `cidade` IN ('Belo Horizonte', 'Florianópolis', 'Porto Alegre');


-- 18 
SELECT `Animais`.`nome`, `Consultas`.`custo`
FROM `Animais`
INNER JOIN `Consultas`
ON `Animais`.`idAnimal` = `Consultas`.`idAnimal_fk`
WHERE `Consultas`.`custo` BETWEEN 100.00 AND 200.00;

-- (esse aqui foi full chat)

-- 19 
SELECT * FROM `Animais`
WHERE `obs` IS NULL;


-- 20 
SELECT * FROM `Consultas`
WHERE `diagnostico` IS NOT NULL;