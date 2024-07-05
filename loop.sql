declare
a int:=&a;
b int:=&b;
c int:=&c;
begin
while b<=10
loop
c:=a*b;
dbms_output.put_line(a||'*'||b||'='||c);
end loop;
end;
/