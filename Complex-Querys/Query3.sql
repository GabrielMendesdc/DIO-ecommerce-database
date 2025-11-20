-- Produtos ordenados por valor agregado (preço × rating)
SELECT 
    Pname AS 'Produto',
    category AS 'Categoria', 
    price AS 'Preço',
    rating AS 'Avaliação',
    (price * rating) AS 'Valor Agregado'
FROM product
ORDER BY (price * rating) DESC;