declare
c char;

begin
c:='&c';
   if c='a' OR c='e' OR c='i' OR c='o' OR c='u' then
      dbms_output.put_line('vowel');
   else
      dbms_output.put_line('consonent');
end if;
end;
/
