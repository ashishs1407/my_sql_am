 # where => filtering 
 
 select * from mock_data where gender = 'male' ;
 
 # give me list of distinct country 
 # fetch the records where country_code is ID
 
 
 select * from mock_data where Country_code = 'ID' ;
 
 
 # operators 
 
 #  = , > , < , >= , <=    ;
 
 
 select * from mock_data where id > 500 ;
 select * from mock_data where id < 20 ;
 
  select * from mock_data where id <= 20 ;
  
   select * from mock_data where id >= 100 ; 
  

use my_sql_prac ;
select * from employee_data ; 


#1) fetch first_na,e , last name from emp data whose salary is greater than 50000 
#2) fetch all the emails for  4th  region_id



# and | or 

select * from employee_data where region_id  = 4  or  gender = 'F' ;
select * from employee_data ; 



# select all records where department = tools along with salary gt than 5000



# operators & datatype 

# datatypes =>  
-- int , float , str , bool  


use my_sql_prac ;

CREATE TABLE student (
    std_name VARCHAR(50),
    class INT,
    DOB DATE
);
select * from student ;

# inserting data in table 
# date => yyyy-mm-dd   => 10th june 2001  => '2001-06-10'
insert into student 
value  ('Ajay' , 10 , '2002-06-10' ) ;

insert into student 
value  ('vijay' , 10 , '2000-04-23' ) , ('sanjay' , 4 , '1900-07-21') ; 

insert into student (class , std_name , DOB)
value (5 , 'ritik' , '1999-08-06') ;


insert into student (class , std_name , DOB)
value (5 , 'hakhfksdjsdjfgsdhfjkghsdkfjhsdjkshgkjshgkjshgfdkjghdfkjghdkjghfdgkjhadjghdgdhghagjhgjkh' , '1999-08-06') ;


# Null 
insert into student (class , std_name , DOB)
value (3 , 'poonam' , Null ) ;

# operators 
# where => filtering  condition => col operator value 
# where std_name = 'ritik'

# comparition operators 
# = , > , < ,  >= , <=   , <> or != not equal to 


select * from student 
where std_name = 'vijay' ;

select * from student 
where class > 5 ;

SELECT 
    *
FROM
    student
WHERE
    class < 5;


# AND | OR 

select * from employee_data 
where department = 'Sports'; 

select * from employee_data 
where salary < 50000 ;

# and | or 

select * from employee_data 
where department = 'Sports' and salary > 50000 ;

# region_id 

select * from employee_data 
where department = 'Sports' and salary > 50000  and region_id = 3;


Select * from employee_data 
where department = 'Sports' or salary > 50000 ;





select * from employee_data 
where (department = 'Sports' and salary > 50000 )  or  region_id = 3 ;

# Either employee works in sports department with salary > 50000 or region  is 3 

 
 
 Select 5%2 ; 
 select * from employee_data 
where department = 'Sports' and salary > 5  ;


# Not  operator 
 
 select * from employee_data 
where department != 'Sports'  ;

 select * from employee_data 
where department <> 'Sports'  ; 

 select * from employee_data 
where not  department != 'Sports'  ;

# order by  => sorting 


select * from employee_data 
order by salary desc ;


select * from employee_data 
order by salary  ;

select * from employee_data 
order by  region_id , salary desc; 


# top 5 highest  salary 

select * from employee_data 
order by salary desc 
limit 5 ;
