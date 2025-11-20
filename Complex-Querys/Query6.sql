-- Fornecedores que fornecem produtos acima da média de preço
SELECT 
    sup.socialName AS 'Fornecedor',
    p.Pname AS 'Produto',
    p.price AS 'Preço'
FROM supplier sup
JOIN productSupplier psup ON sup.idSupplier = psup.idPsSupplier
JOIN product p ON psup.idPsProduct = p.idProduct
WHERE p.price > (SELECT AVG(price) FROM product)
ORDER BY p.price DESC;