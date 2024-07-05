SQL> connect
Enter user-name: dbms
Connected.
SQL> ed pl.sql

SQL> 
SQL> 
SQL> 
SQL> 
SQL> efllkwe;lfkwe
SP2-0734: unknown command beginning "efllkwe;lf..." - rest of line ignored.
SQL> ed c://pl.sql

SQL> ed c://pl.sql

SQL> @pl.sql
SQL> @c:\\pl.sql
  4  ;
  5  /
;
*
ERROR at line 4:
ORA-06550: line 4, column 1: 
PLS-00103: Encountered the symbol ";"  


SQL> @c:\\pl.sql
  4  /

PL/SQL procedure successfully completed.

SQL> set serveroutput on
SQL> @c:\\pl.sql
  4  /
my first                                                                        

PL/SQL procedure successfully completed.

SQL> 		@c:\\pl.sql
  4  /
my first                                                                        

PL/SQL procedure successfully completed.

SQL> 		@c:\\pl.sql
  4  /
my first                                                                        

PL/SQL procedure successfully completed.

SQL> @c:\\pll.sql
SP2-0310: unable to open file "c:\\pll.sql"
SQL> ed c:\\pll.sql

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> uyguhg
SP2-0042: unknown command "uyguhg" - rest of line ignored.
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> set serveroutput on
SQL> @c:\\pll.sql
  9  /
dbms_output.putline('output is'||z);
            *
ERROR at line 7:
ORA-06550: line 7, column 13: 
PLS-00302: component 'PUTLINE' must be declared 
ORA-06550: line 7, column 1: 
PL/SQL: Statement ignored 


SQL> ed c:\\pll.sql

SQL> @c:\\pll.sql
  9  /
output is12                                                                     

PL/SQL procedure successfully completed.

SQL> ed c:\\pll.sql

SQL> spool
currently spooling to c://abhi.sql
SQL> 
SQL> spool off;
