-- Clientes de São Paulo com total gasto aproximado
SELECT 
    CONCAT(Fname, ' ', Lname) AS 'Cliente',
    Address AS 'Endereço',
    (SELECT COUNT(*) FROM orders o WHERE o.idOrderClient = c.idClient) AS 'Total de Pedidos'
FROM clients c
WHERE Address LIKE '%São Paulo%';