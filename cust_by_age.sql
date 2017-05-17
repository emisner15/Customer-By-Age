create or replace function cust_by_age(customer_id varchar2) 
	return integer as 
		age int;
begin
	select cust_age 
	into age
	from customers
	where cust_id = customer_id;
	
	return age;
		
exception
        when no_data_found then
		    return 0;
		 			 
end;
/

show errors
