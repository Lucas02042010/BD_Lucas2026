-- 1
SELECT `produtos`.`nome`, `categorias`.`nome`
FROM `produtos`
INNER JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`;


-- 2
SELECT `produtos`.`nome`, `produtos`.`preco`
FROM `produtos`
INNER JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`
WHERE `categorias`.`nome` = 'Periféricos';


-- 3
SELECT `produtos`.`nome`, `produtos`.`fabricante`
FROM `produtos`
INNER JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`
WHERE `categorias`.`nome` = 'Notebooks';


-- 4
SELECT `produtos`.`nome`, `categorias`.`nome`, `produtos`.`preco`
FROM `produtos`
INNER JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`
WHERE `produtos`.`preco` > 2000.00;