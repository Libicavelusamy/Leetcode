/* Write your T-SQL query statement below */
select firstName,lastName,city,state
from Address right join  Person
on Person.personId=Address.personId

