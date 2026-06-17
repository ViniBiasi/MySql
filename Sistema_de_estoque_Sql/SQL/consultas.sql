SELECT p.nome, c.nome_categoria
FROM produtos p
JOIN categorias c
ON p.id_categoria = c.id_categoria;

SELECT p.nome, f.nome_fornecedor
FROM produtos p
JOIN fornecedores f
ON p.id_fornecedor = f.id_fornecedor;

SELECT c.nome_categoria, COUNT(*) AS quantidade
FROM produtos p
JOIN categorias c
ON p.id_categoria = c.id_categoria
GROUP BY c.nome_categoria;

SELECT nome, quantidade_estoque
FROM produtos
WHERE quantidade_estoque < 20;

SELECT SUM(preco * quantidade_estoque) AS valor_total
FROM produtos;
