select Region, city, count(distinct uo.Order_ID)
from  `mydb`.`user` as u
inner join  `mydb`.`user address` as ua on ua.Address_ID = u.Address_ID
inner join  `mydb`.`order` as uo on uo.User_ID = u.User_ID 
group by Region, city
