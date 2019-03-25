CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    
SQL SECURITY DEFINER
VIEW `mydb`.`finalrfmscore` AS
    SELECT 
        `rfm_scoring`.`User_Name` AS `User_Name`,

        ((`rfm_scoring`.`Recent` + `rfm_scoring`.`Freq`) + `rfm_scoring`.`Valuable`) AS `RFM_Score`
   
 FROM
        `mydb`.`rfm_scoring`
    ORDER BY ((`rfm_scoring`.`Recent` + `rfm_scoring`.`Freq`) + `rfm_scoring`.`Valuable`) DESC