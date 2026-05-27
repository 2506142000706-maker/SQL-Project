create database abhi;
use abhi;
SELECT  Shipment_cost , Shipment_id, status, 
RANK() OVER (PARTITION BY shipment_cost ORDER BY Shipment_cost aSC) AS Ranking
FROM logistics;

SELECT  
    Shipment_cost, 
    Shipment_id, 
    status, 
    RANK() OVER (ORDER BY Shipment_cost ASC) AS Ranking
FROM logistics;