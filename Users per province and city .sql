select Region, city, count(distinct u.User_ID)
from  `mydb`.`user` as u
inner join  `mydb`.`user address` as ua on ua.Address_ID = u.Address_ID
group by Region, city
