-- Pedidos completos com info de clientes, produtos e status
SELECT 
    o.idOrder AS 'Pedido',
    CONCAT(c.Fname, ' ', c.Lname) AS 'Cliente',
    p.Pname AS 'Produto',
    po.poQuantity AS 'Quantidade',
    o.orderStatus AS 'Status',
    (p.price * po.poQuantity + o.sendValue) AS 'Valor Total'
FROM orders o
JOIN clients c ON o.idOrderClient = c.idClient
JOIN productOrder po ON o.idOrder = po.idPOorder
JOIN product p ON po.idPOproduct = p.idProduct
WHERE o.orderStatus != 'Cancelado'
ORDER BY o.idOrder;