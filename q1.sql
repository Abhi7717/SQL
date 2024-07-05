declare
x int;
y int;
z int:=1;
begin
dbms_output.put_line('enetr the value of x and y'); 
x:=&x;
y:=&y;
if x>y
then
z:=mod(x,y);
dbms_output.put_line('modulus = '||z);
else
while y>0 
loop
z:=z*x;
y:=y-1;
end loop;
dbms_output.put_line('power = '||z); 
end if;
end;
/