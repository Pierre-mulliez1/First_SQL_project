CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    
SQL SECURITY DEFINER
VIEW `mydb`.`rfm_scoring` AS
    SELECT 
        `rfmview`.`User_Name` AS `User_Name`,

        (CASE
            WHEN (`rfmview`.`Frequency` > `rfm_mean`.`mean_freq`) THEN 1
            ELSE 0
        END) 
AS `Freq`,
        (CASE
            WHEN (`rfmview`.`recency` > `rfm_mean`.`mean_rec`) THEN 1
            ELSE 0
        END) 
AS `Recent`,
        (CASE
            WHEN (`rfmview`.`MonetaryValue` > `rfm_mean`.`mean_val`) THEN 1
            ELSE 0
        END) 
AS `Valuable`
    FROM
        (`mydb`.`rfmview`
        JOIN `mydb`.`rfm_mean`)
    
GROUP BY `rfmview`.`User_Name` , `Freq` , `Recent` , `Valuable`