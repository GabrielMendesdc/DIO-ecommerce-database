-- Vendedores com mais de 1 produto e quantidade total
SELECT 
    s.socialName AS 'Vendedor',
    COUNT(ps.idPproduct) AS 'Qtd Produtos',
    SUM(ps.prodQuantity) AS 'Estoque Total'
FROM seller s
JOIN productSeller ps ON s.idSeller = ps.idPseller
GROUP BY s.idSeller
HAVING COUNT(ps.idPproduct) > 1;