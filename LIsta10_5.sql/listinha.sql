

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

-- 5
SELECT `produtos`.`nome`, `categorias`.`nome`
FROM `produtos`
LEFT JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`;

-- 6
SELECT `produtos`.`nome`
FROM `produtos`
LEFT JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`
WHERE `produtos`.`idCategoria_fk` IS NULL;

-- 7
SELECT `categorias`.`nome`, `produtos`.`nome`
FROM `produtos`
RIGHT JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`;

-- 8
SELECT `categorias`.`nome`
FROM `produtos`
RIGHT JOIN `categorias`
ON `produtos`.`idCategoria_fk` = `categorias`.`idCategoria`
WHERE `produtos`.`idProduto` IS NULL;
