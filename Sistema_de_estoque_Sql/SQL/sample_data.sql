INSERT INTO categorias (nome_categoria) VALUES
('Informática'),
('Periféricos'),
('Escritório'),
('Redes'),
('Armazenamento'),
('Impressão'),
('Áudio'),
('Vídeo'),
('Acessórios'),
('Limpeza');

INSERT INTO fornecedores (nome_fornecedor, telefone) VALUES
('Tech Distribuidora', '(11) 99999-1111'),
('Mega Informática', '(11) 99999-2222'),
('Office Supply', '(11) 99999-3333'),
('Digital Solutions', '(11) 99999-4444'),
('Global Tech', '(11) 99999-5555'),
('Info Center', '(11) 99999-6666'),
('Net Equipamentos', '(11) 99999-7777'),
('Storage Brasil', '(11) 99999-8888'),
('Audio Vision', '(11) 99999-9999'),
('Suprimentos SP', '(11) 99999-0000');

INSERT INTO produtos
(nome, descricao, preco, quantidade_estoque, id_categoria, id_fornecedor)
VALUES
('Mouse Gamer', 'Mouse RGB 7200 DPI', 129.90, 50, 2, 1),
('Teclado Mecanico', 'Switch Blue', 249.90, 30, 2, 2),
('Monitor 24', 'Full HD IPS', 899.90, 15, 8, 4),
('SSD 1TB', 'NVMe Gen4', 499.90, 20, 5, 8),
('Roteador AX3000', 'Wi-Fi 6', 399.90, 12, 4, 7),
('Impressora Laser', 'Monocromatica', 1199.90, 8, 6, 3),
('Headset Gamer', 'Som surround', 299.90, 25, 7, 9),
('Webcam Full HD', '1080p', 199.90, 18, 8, 5),
('Pendrive 64GB', 'USB 3.0', 49.90, 100, 5, 8),
('Caneta Azul', 'Escritorio', 2.50, 500, 3, 10);

INSERT INTO movimentacoes
(data_movimentacao, tipo_movimentacao, quantidade, id_produto)
VALUES
('2026-06-01', 'ENTRADA', 50, 1),
('2026-06-02', 'SAIDA', 5, 1),
('2026-06-03', 'ENTRADA', 30, 2),
('2026-06-04', 'SAIDA', 2, 2),
('2026-06-05', 'ENTRADA', 15, 3),
('2026-06-06', 'SAIDA', 1, 3),
('2026-06-07', 'ENTRADA', 20, 4),
('2026-06-08', 'ENTRADA', 12, 5),
('2026-06-09', 'SAIDA', 3, 5),
('2026-06-10', 'ENTRADA', 100, 9);