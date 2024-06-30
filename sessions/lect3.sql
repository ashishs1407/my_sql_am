# between and => range opertor 

select * from <tbl_name> 
where id between <lower_limit> and <higher_limit> ;   

Select * from employee_data 
where employee_id   between 3 and 13 ;

# in operator 

# id => 3,5,7,10 

select * from employee_data 
where employee_id  in (3,5,7,10 , 150) ; 

select * from employee_data 
where employee_id = 3 or employee_id = 150 ;

# pattern matching operator 
# like , wilcard operators _ %


select * from employee_data  
where first_name like 'Be%' ;

# Be% =>     '%n' 

select * from employee_data  
where first_name like '%n' ;


select * from employee_data  
where first_name like '%re%' ; 

# _ => one character value 

select * from employee_data  
where salary like '56_52' ;


# offset 
# we need to print 10 records but want to skip fist 3 records 
select * from employee_data order by employee_id limit 5 offset 10 ;  


# function   => function does action gives the o/p of that action  
# string functions 
# CONCAT	Adds two or more expressions together 

select concat('Ajay' , ' ','sharma') ; 
select first_name ,last_name ,concat(first_name , ' ',last_name ,' ', email ) as full_name from employee_data ;  

select first_name ,last_name ,concat_ws( ' ',first_name ,last_name , email ) as full_name from employee_data ;  


# LENGTH	Returns the length of a string (in bytes) 

select length('Ajay') ; 
select email , length(email) as length_of_email  from employee_data ;    

# LOWER	Converts a string to lower-case 

select lower(first_name) from employee_data ;


# UPPER	Converts a string to upper-case

select UPPER(first_name) from employee_data ;

# TRIM	Removes leading and trailing spaces from a string

select trim('    ajay     ') ;
select '    ajay     ' ;
 
 
 
# REVERSE	Reverses a string and returns the result

select reverse('ajay')  ;

# left & right 


select first_name , left(first_name , 4)  , right(first_name , 4)  from employee_data ; 

# SUBSTRING	Extracts a substring from a string (starting at any position)

select substring('Ajay.sharma@gmail.com' , 13 , 5 ) ;

select substring_index('Ajay.sharma.gmail.com' , '.', -3 )  ; 

select substring_index('ajay_sharma' ,'_' ,1) ;
select email , 
substring_index( email ,'@' , 1)  as user_name 
, substring_index( email ,'@' , -1)  as domain_name 

from employee_data ; 

# POSITION	Returns the position of the first occurrence of a substring in a string
select email , position('@' in email ) from employee_data ;  




select substring(email ,position('@' in email ) + 1  )  from employee_data;  


# replace 

select replace('amar_shindhiya' , '_' , ' ') ; 

select insert('ajay_sharma' , 5,4,' sanjay' )   ;

# numeric functions 

select abs(salary) from employee_data ;

# aggregator funcstions. 
# avg 
select avg(salary) from employee_data  ; 
# min 
select min(salary) from employee_data  ; 
# max
select max(salary)   from employee_data  ; 
# count 
select count(employee_id) from employee_data  ; 
# sum
select sum(salary) from employee_data  ; 

select sum(salary) / count(employee_id)  from employee_data  ; 

# round , floor , ceil 

select round(avg(salary) , 2) from employee_data  ; 

select round(123.65789, -2)  ;
select floor(123.65789) ;
select ceil(123.45789)  ;

select round(round(1537777890 , -7)/10000000) as pop_in_cr ; 


select 5%2 ;

select mod(5,2) ;

select sqrt(1331) ; 

select round(power(1331,(1/3))) ;

# date function 

select curdate() ;
select now() ;
select date('2024-06-30 20:52:05');
select day('2024-06-30 20:52:05');
select month('2024-06-30');
select year('2024-06-30');

SELECT DATE_ADD("2024-06-15", INTERVAL 10 DAY); 
SELECT DATE_ADD("2024-06-15", INTERVAL 1 week); 
select DAYNAME("2024-06-15") ;

SELECT DATE_sub("2024-06-22", INTERVAL 1 week); 

SELECT DATEDIFF("2024-06-22", "2024-06-15"); 

SELECT ceil(DATEDIFF(curdate(), "1999-02-10") / 365 ); 
