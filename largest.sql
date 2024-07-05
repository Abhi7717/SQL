declare
a int:=&a;
b int:=&b;
c int:=&c;
begin
if a>b
 then
   if a>c
     then
       dbms_output.put_line('largest :'||a);
   else
	       dbms_output.put_line('largest :'||c);
	end if;
else
  if b>c then
         dbms_output.put_line('largest :'||b);
   else
                dbms_output.put_line('largest :'||c);
     end if;
    end if;
end;
/