CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mydb`.`rfm_mean` AS
    SELECT 
        AVG(`rfmview`.`Frequency`) AS `mean_freq`,
        AVG(`rfmview`.`recency`) AS `mean_rec`,
        AVG(`rfmview`.`MonetaryValue`) AS `mean_val`
    FROM
        `mydb`.`rfmview`