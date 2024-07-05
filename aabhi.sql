declare
x int;
y int;
begin 
select mark into y from stud11 when roll:=&x;
dbms_output.put_line(y);
exception
when no_data_found then 
dbms_output.put_line('no such data');
end;
/