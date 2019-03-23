CREATE VIEW `MostValue` 
AS
 Select 
`User_ID`,
max(`Order`.`Order_qty`*`Product`.`Price`) as `MonetaryValue`
From 
`Order` join `Product` on `Order`.
`Product_ID`=`Product`.`Product_ID`
Group by `User_ID`;
