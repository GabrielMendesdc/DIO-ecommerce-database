-- Produtos com preço com desconto de 10%
SELECT 
    Pname AS 'Produto',
    price AS 'Preço Original',
    ROUND(price * 0.9, 2) AS 'Preço com 10% off'
FROM product;