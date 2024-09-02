-- Criação do banco de dados
CREATE DATABASE SistemaControleEstoque;

-- Selecionar o banco de dados para uso
USE SistemaControleEstoque;

-- Criação da tabela de Fornecedores
CREATE TABLE Fornecedores (
    fornecedor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15)
);

-- Criação da tabela de Produtos
CREATE TABLE Produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(fornecedor_id)
);

-- Criação da tabela de Pedidos de Reposição
CREATE TABLE PedidosReposicao (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade INT NOT NULL,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);

-- Inserção de dados na tabela Fornecedores
INSERT INTO Fornecedores (nome, endereco, telefone) VALUES
('Fornecedor A', 'Rua 1, Cidade A', '1234-5678'),
('Fornecedor B', 'Rua 2, Cidade B', '9876-5432');

-- Inserção de dados na tabela Produtos
INSERT INTO Produtos (nome, quantidade, preco, fornecedor_id) VALUES
('Produto X', 100, 10.50, 1),
('Produto Y', 200, 20.75, 2);

-- Inserção de dados na tabela Pedidos de Reposição
INSERT INTO PedidosReposicao (produto_id, quantidade, data_pedido) VALUES
(1, 50, '2024-09-01'),
(2, 30, '2024-09-02');

-- Consulta para verificar os produtos em estoque
SELECT * FROM Produtos;

-- Consulta para verificar os pedidos de reposição feitos
SELECT * FROM PedidosReposicao;

-- Consulta para obter informações sobre fornecedores
SELECT * FROM Fornecedores;

-- Atualizar a quantidade de um produto após um pedido de reposição
UPDATE Produtos
SET quantidade = quantidade + 50
WHERE produto_id = 1;

-- Deletar um produto descontinuado
DELETE FROM Produtos
WHERE produto_id = 2;

-- Consulta com JOIN para visualizar produtos e seus fornecedores
SELECT Produtos.nome AS produto, Fornecedores.nome AS fornecedor, Produtos.quantidade, Produtos.preco
FROM Produtos
JOIN Fornecedores ON Produtos.fornecedor_id = Fornecedores.fornecedor_id;
