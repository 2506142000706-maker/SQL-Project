SELECT * FROM bheem.operations;
select   Order_ID , QUANTITY , CASE WHEN QUANTITY >50 THEN 'HIGH' ELSE 'LOW' END AS DEMAND_CATEGORY FROM bheem.operations;

select order_id, quantity,case when quantity >58

 then 'high' else 'low' end as demand_category from bheem.operations;
 
 select warehouse, quantity, case
when quantity >80 then 'heavy load' 
when quantity between 40 and 80 then 'medium load'
else 'low' end as load_category from bheem.operations;
 


SELECT 
    Order_ID,
    Product,
    Quantity,
    Warehouse,
    Delivery_Status,
    CASE 
        WHEN Delivery_Status = 'Delivered' THEN 'On Time'
        WHEN Delivery_Status = 'Completed' THEN 'On Time'
        WHEN Delivery_Status = 'Pending' THEN 'Delayed'
        ELSE 'Unknown'
    END AS Delivery_Flag
FROM bheem.operations;

