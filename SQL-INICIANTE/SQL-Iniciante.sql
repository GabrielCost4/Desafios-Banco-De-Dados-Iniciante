CREATE DATABASE Loja

USE LOJA

-- Criando tabela de Produto
CREATE TABLE Produto (
 ID_Produto int PRIMARY KEY IDENTITY(1,1) NOT NULL,
 Nome varchar (100) NOT NULL,
 Preco_Custo decimal (15,2) NOT NULL,
 Preco_Venda decimal (15,2) NOT NULL
);

-- Adicionando 10 produtos à tabela de Produtos
INSERT INTO Produto
(Nome, Preco_Custo, Preco_Venda)
VALUES
('Smartphone', 200, 400),
('Café', 10, 20),
('Jogo de copos', 20, 40),
('Aspirador de pó', 250, 350),
('Televisão Smart', 1500, 2000),
('Notebook', 3500, 3000),
('Teclado Gamer', 250, 200),
('Mouse', 120, 90),
('Monitor', 900, 850),
('Headset', 150, 300);

-- Atualizando o preço de venda do Café para R$15
UPDATE Produto
SET Preco_Venda = 15
WHERE Nome = 'Café'

-- Exibindo os nomes e os preços dos 5 mais caros em ordem descrescente
SELECT TOP 5 
p.nome, p.Preco_Venda
FROM Produto p
ORDER BY p.Preco_Venda DESC

-- Script para excluir os produtos com preço de venda menor
DELETE FROM Produto 
WHERE Preco_Custo > Preco_Venda

SELECT *
FROM Produto
