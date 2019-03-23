select `membership type`, count(distinct u.User_ID)
from  `mydb`.`user` as u
inner join  `mydb`.`buyer`as ua on ua.User_ID = u.User_ID
group by `membership type`
