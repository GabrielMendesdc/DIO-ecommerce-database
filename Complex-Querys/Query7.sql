-- Categorias com análise de desempenho
SELECT 
    category AS 'Categoria',
    COUNT(*) AS 'Qtd Produtos',
    AVG(price) AS 'Preço Médio',
    AVG(rating) AS 'Avaliação Média',
    CASE 
        WHEN AVG(rating) > 4.5 THEN 'Excelente'
        WHEN AVG(rating) > 4.0 THEN 'Bom'
        ELSE 'Regular'
    END AS 'Desempenho'
FROM product
GROUP BY category
HAVING COUNT(*) >= 1
ORDER BY AVG(rating) DESC;