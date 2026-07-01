-- ==========================================================
-- CONSULTAS BÁSICAS
-- ==========================================================

-- 1. Listar todos os produtos com suas respectivas categorias.
SELECT p.nome, c.nome_categoria
FROM produtos p
JOIN categorias c
ON p.id_categoria = c.id_categoria;

-- 2. Listar todos os produtos com seus respectivos fornecedores.
SELECT p.nome, f.nome_fornecedor
FROM produtos p
JOIN fornecedores f
ON p.id_fornecedor = f.id_fornecedor;

-- 3. Contar quantos produtos existem em cada categoria.
SELECT c.nome_categoria, COUNT(*) AS quantidade
FROM produtos p
JOIN categorias c
ON p.id_categoria = c.id_categoria
GROUP BY c.nome_categoria;

-- 4. Listar produtos com estoque inferior a 20 unidades.
SELECT nome, quantidade_estoque
FROM produtos
WHERE quantidade_estoque < 20;

-- 5. Calcular o valor total do estoque.
SELECT SUM(preco * quantidade_estoque) AS valor_total
FROM produtos;


-- ==========================================================
-- AGRUPAMENTOS (GROUP BY)
-- ==========================================================

-- 6. Mostrar a quantidade de produtos por categoria.
SELECT categorias.nome_categoria, COUNT(*) AS Quantidade
FROM categorias
JOIN produtos
ON categorias.id_categoria = produtos.id_categoria
GROUP BY nome_categoria;

-- 7. Mostrar a categoria com a maior quantidade de produtos.
SELECT categorias.nome_categoria, COUNT(*) AS Quantidade
FROM categorias
JOIN produtos
ON categorias.id_categoria = produtos.id_categoria
GROUP BY categorias.nome_categoria
ORDER BY Quantidade DESC
LIMIT 1;

-- 8. Mostrar o fornecedor com a maior quantidade de produtos.
SELECT nome_fornecedor, COUNT(*) AS Quantidade
FROM fornecedores
JOIN produtos
ON fornecedores.id_fornecedor = produtos.id_fornecedor
GROUP BY nome_fornecedor
ORDER BY Quantidade DESC
LIMIT 1;


-- ==========================================================
-- SUBCONSULTAS
-- ==========================================================

-- 9. Mostrar o produto mais caro do estoque.
SELECT nome, preco
FROM produtos
WHERE preco = (
    SELECT MAX(preco)
    FROM produtos
);

-- 10. Mostrar a categoria com o maior valor total em estoque.
SELECT nome_categoria,
       SUM(preco * quantidade_estoque) AS maior_valor
FROM produtos
JOIN categorias
ON produtos.id_categoria = categorias.id_categoria
GROUP BY nome_categoria
ORDER BY maior_valor DESC
LIMIT 1;

-- 11. Mostrar produtos com preço acima da média geral.
SELECT nome, preco
FROM produtos
WHERE preco > (
    SELECT AVG(preco)
    FROM produtos
);


-- ==========================================================
-- HAVING
-- ==========================================================

-- 12. Mostrar categorias que possuem mais de um produto.
SELECT nome_categoria, COUNT(*) AS Quantidade
FROM produtos
JOIN categorias
ON produtos.id_categoria = categorias.id_categoria
GROUP BY nome_categoria
HAVING Quantidade > 1;

-- 13. Mostrar categorias cuja média de preço é superior a R$ 300.
SELECT nome_categoria, AVG(preco) AS preco
FROM produtos
JOIN categorias
ON categorias.id_categoria = produtos.id_categoria
GROUP BY nome_categoria
HAVING preco > 300;

-- 14. Mostrar fornecedores cujo estoque total ultrapassa 100 unidades.
SELECT nome_fornecedor
FROM fornecedores
JOIN produtos
ON fornecedores.id_fornecedor = produtos.id_fornecedor
GROUP BY nome_fornecedor
HAVING SUM(quantidade_estoque) > 100;

-- 15. Mostrar categorias cujo valor total em estoque é superior a R$ 5.000.
SELECT nome_categoria,
       SUM(preco * quantidade_estoque) AS total
FROM categorias
JOIN produtos
ON categorias.id_categoria = produtos.id_categoria
GROUP BY nome_categoria
HAVING SUM(preco * quantidade_estoque) > 5000
ORDER BY total DESC;


-- ==========================================================
-- EXISTS / NOT EXISTS
-- ==========================================================

-- 16. Mostrar fornecedores que possuem pelo menos um produto cadastrado.
SELECT *
FROM fornecedores
WHERE EXISTS (
    SELECT *
    FROM produtos
    WHERE produtos.id_fornecedor = fornecedores.id_fornecedor
);

-- 17. Mostrar fornecedores que não possuem produtos cadastrados.
SELECT *
FROM fornecedores
WHERE NOT EXISTS (
    SELECT *
    FROM produtos
    WHERE produtos.id_fornecedor = fornecedores.id_fornecedor
);

-- ==========================================================
-- VIEW
-- ==========================================================

-- 18. Criar uma VIEW para facilitar consultas de produtos em estoque.
CREATE VIEW vw_produtos_estoque AS
SELECT
    produtos.nome,
    categorias.nome_categoria,
    nome_fornecedor,
    produtos.preco,
    produtos.quantidade_estoque
FROM produtos
JOIN categorias
ON produtos.id_categoria = categorias.id_categoria
JOIN fornecedores
ON produtos.id_fornecedor = fornecedores.id_fornecedor;