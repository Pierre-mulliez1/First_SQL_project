CREATE VIEW `Frequency`
 AS
SELECT 
        `Order`.`User_ID` AS `User_ID`, COUNT(0) AS `Frequency`
  
  FROM
        (`User`
        JOIN `Order`)
  
  WHERE
        (`User`.`User_ID` = `Order`.`User_ID`)
  
  GROUP BY `Order`.`User_ID`