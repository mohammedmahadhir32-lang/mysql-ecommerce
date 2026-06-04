#Write a query to display / print only the last name in all caps from "Sanjay Kumar" with padding of "%"
#input in query: Sanjay Kumar
#output display: %%KUMAR%%

select rpad(lpad(upper(substring('Sanjay Kumar',8,5)),7,'%'),9,'%') as pad_string;
