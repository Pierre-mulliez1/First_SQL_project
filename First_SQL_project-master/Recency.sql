CREATE VIEW `Recency`
 AS
SELECT 
        `Order`.`User_ID` AS `User_ID`,

        MAX(`Order`.`Order_Date`) AS `Recency`

    FROM
        `Order`
   
 GROUP BY `Order`.`User_ID`