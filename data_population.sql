-- Inserindo clientes
INSERT INTO clients (Fname, Minit, Lname, CPF, Address) VALUES
('João', 'S', 'Silva', '12345678901', 'Rua A, 123 - São Paulo, SP'),
('Maria', 'C', 'Santos', '23456789012', 'Av B, 456 - Rio de Janeiro, RJ'),
('Pedro', 'A', 'Oliveira', '34567890123', 'Rua C, 789 - Belo Horizonte, MG'),
('Ana', 'P', 'Costa', '45678901234', 'Av D, 101 - Porto Alegre, RS'),
('Carlos', 'M', 'Lima', '56789012345', 'Rua E, 202 - Salvador, BA');

-- Inserindo produtos
INSERT INTO product (Pname, classification_kids, category, rating, size, price) VALUES
('iPhone 14', FALSE, 'Eletrônico', 4.8, NULL, 4999.99),
('Camiseta Nike', FALSE, 'Vestimenta', 4.5, 'M', 89.90),
('Boneco Action', TRUE, 'Brinquedos', 4.2, NULL, 49.90),
('Notebook Dell', FALSE, 'Eletrônico', 4.6, NULL, 3299.99),
('Chocolate', FALSE, 'Alimentos', 4.7, '250g', 12.50),
('Sofá 3 lugares', FALSE, 'Móveis', 4.3, '3x2m', 1599.99);

-- Inserindo pedidos
INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) VALUES
(1, 'Confirmado', 'Compra via app', 25.00, FALSE),
(2, 'Em processamento', 'Presente aniversário', 35.00, TRUE),
(3, 'Confirmado', 'Compra corporativa', 45.00, FALSE),
(1, 'Cancelado', 'Arrependimento', 25.00, TRUE),
(4, 'Confirmado', 'Reforma casa', 60.00, FALSE);

-- Inserindo vendedores
INSERT INTO seller (socialName, AbstName, CNPJ, CPF, location, contact) VALUES
('Tech Store LTDA', 'TechStore', '12345678000195', NULL, 'São Paulo, SP', '11999998888'),
('Fashion Clothes ME', 'FashionCl', NULL, '987654321', 'Rio de Janeiro, RJ', '21988887777'),
('Toy World EIRELI', 'ToyWorld', '23456789000186', NULL, 'Belo Horizonte, MG', '31977776666');

-- Inserindo fornecedores
INSERT INTO supplier (socialName, CNPJ, contact) VALUES
('Apple Inc Brasil', '11223344000155', '11999990000'),
('Nike Brasil LTDA', '22334455000166', '21988881111'),
('Dell Technologies', '33445566000177', '31977772222');

-- Inserindo locais de armazenamento
INSERT INTO storage (location) VALUES
('São Paulo - Centro'),
('Rio de Janeiro - Zona Norte'),
('Belo Horizonte - Industrial');

-- Inserindo relações entre tabelas
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1, 1, 1, 'Disponível'),
(2, 1, 2, 'Disponível'),
(3, 2, 1, 'Disponível'),
(4, 3, 1, 'Sem estoque');

INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES
(1, 1, 10),
(1, 4, 5),
(2, 2, 50),
(3, 3, 30);

INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
(1, 1, 100),
(2, 2, 200),
(3, 4, 150);

INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
(1, 1, 'Prateleira A1'),
(2, 2, 'Prateleira B2'),
(3, 3, 'Prateleira C3'),
(4, 1, 'Prateleira A2');