CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mydb`.
`rfmview` AS
    SELECT 
        `mydb`.`user`.`User_name` AS `User_Name`,

        `frequency`.`Frequency` AS `Frequency`,

        `recency`.`Recency` AS `recency`,
 
       `mostvalue`.`MonetaryValue` AS `MonetaryValue`
   
 FROM
        (((`mydb`.`user`
        JOIN `mydb`.`frequency`)
        JOIN `mydb`.`recency`)
        JOIN `mydb`.`mostvalue`)
 
   WHERE
        ((`mydb`.`user`.`User_ID` = `frequency`.`User_ID`)
     
       AND (`mydb`.`user`.`User_ID` = `recency`.`User_ID`)
      
      AND (`mydb`.`user`.`User_ID` = `mostvalue`.`User_ID`))
 
   GROUP BY `mydb`.`user`.`User_name` , `frequency`.`Frequency` , `recency`.`Recency` , `mostvalue`.`MonetaryValue`