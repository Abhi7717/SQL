SQL> connect
Enter user-name: dbms
ERROR:
ORA-01017: invalid username/password; logon denied 


SQL> connect
Enter user-name: dbms
ERROR:
ORA-01017: invalid username/password; logon denied 


SQL> connect
Enter user-name: dbms
Connected.
SQL> create table stud(roll int,name varchar(20),marks int,grade varchar(20));
create table stud(roll int,name varchar(20),marks int,grade varchar(20))
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> create table stude(roll int,name varchar(20),marks int,grade varchar(20));

Table created.

SQL> insert into stude values(1,'A',50,'C');

1 row created.

SQL> insert into stude values(2,'B',60,'B');

1 row created.

SQL> insert into stude values(3,'C',70,'A');

1 row created.

SQL> insert into stude values(4,'D',50,'D');

1 row created.

SQL> insert into stude values(5,'A',70,'E');

1 row created.

SQL> select * from stude;

      ROLL NAME                      MARKS GRADE                                                                                                                                                                                                                    
---------- -------------------- ---------- --------------------                                                                                                                                                                                                     
         1 A                            50 C                                                                                                                                                                                                                        
         2 B                            60 B                                                                                                                                                                                                                        
         3 C                            70 A                                                                                                                                                                                                                        
         4 D                            50 D                                                                                                                                                                                                                        
         5 A                            70 E                                                                                                                                                                                                                        

SQL> my roll is 4 And name is ABhijit;
SP2-0734: unknown command beginning "my roll is..." - rest of line ignored.
SQL> select 'my roll is || 3 ||' and name is'|| C from stude;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> select 'my roll is' || 3 ||' and name is'|| C from stude;
select 'my roll is' || 3 ||' and name is'|| C from stude
                                            *
ERROR at line 1:
ORA-00904: "C": invalid identifier 


SQL> select 'my roll is' || roll ||' and name is'|| name from stude;

'MYROLLIS'||ROLL||'ANDNAMEIS'||NAME                                                                                                                                                                                                                                 
----------------------------------------------------------------------------------                                                                                                                                                                                  
my roll is1 and name isA                                                                                                                                                                                                                                            
my roll is2 and name isB                                                                                                                                                                                                                                            
my roll is3 and name isC                                                                                                                                                                                                                                            
my roll is4 and name isD                                                                                                                                                                                                                                            
my roll is5 and name isA                                                                                                                                                                                                                                            

SQL> select * from stude when marks>60;
select * from stude when marks>60
                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select * from stude when marks>60
  2  ;
select * from stude when marks>60
                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select * from stude where marks>60;

      ROLL NAME                      MARKS GRADE                                                                                                                                                                                                                    
---------- -------------------- ---------- --------------------                                                                                                                                                                                                     
         3 C                            70 A                                                                                                                                                                                                                        
         5 A                            70 E                                                                                                                                                                                                                        

SQL> select * from stude where marks>50 And marks<70;

      ROLL NAME                      MARKS GRADE                                                                                                                                                                                                                    
---------- -------------------- ---------- --------------------                                                                                                                                                                                                     
         2 B                            60 B                                                                                                                                                                                                                        

SQL> select name, marks+10 from stude;

NAME                   MARKS+10                                                                                                                                                                                                                                     
-------------------- ----------                                                                                                                                                                                                                                     
A                            60                                                                                                                                                                                                                                     
B                            70                                                                                                                                                                                                                                     
C                            80                                                                                                                                                                                                                                     
D                            60                                                                                                                                                                                                                                     
A                            80                                                                                                                                                                                                                                     

SQL> update stude marks=marks+10 from stude;
update stude marks=marks+10 from stude
                  *
ERROR at line 1:
ORA-00971: missing SET keyword 


SQL> update stude set marks=marks+10 from stude;
update stude set marks=marks+10 from stude
                                *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> update stude set marks=marks+10;

5 rows updated.

SQL> select * from stude;

      ROLL NAME                      MARKS GRADE                                                                                                                                                                                                                    
---------- -------------------- ---------- --------------------                                                                                                                                                                                                     
         1 A                            60 C                                                                                                                                                                                                                        
         2 B                            70 B                                                                                                                                                                                                                        
         3 C                            80 A                                                                                                                                                                                                                        
         4 D                            60 D                                                                                                                                                                                                                        
         5 A                            80 E                                                                                                                                                                                                                        

SQL> select roll "my roll",grade "my grade" from stude;

   my roll my grade                                                                                                                                                                                                                                                 
---------- --------------------                                                                                                                                                                                                                                     
         1 C                                                                                                                                                                                                                                                        
         2 B                                                                                                                                                                                                                                                        
         3 A                                                                                                                                                                                                                                                        
         4 D                                                                                                                                                                                                                                                        
         5 E                                                                                                                                                                                                                                                        

SQL> select roll as my roll;
select roll as my roll
                  *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select roll as my_roll;
select roll as my_roll
                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select roll as 'my_roll';
select roll as 'my_roll'
               *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select roll as 'my_roll' from stude;
select roll as 'my_roll' from stude
               *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select roll as my_roll from stude;

   MY_ROLL                                                                                                                                                                                                                                                          
----------                                                                                                                                                                                                                                                          
         1                                                                                                                                                                                                                                                          
         2                                                                                                                                                                                                                                                          
         3                                                                                                                                                                                                                                                          
         4                                                                                                                                                                                                                                                          
         5                                                                                                                                                                                                                                                          

SQL> savepoint s1;

Savepoint created.

SQL> update stude set marks=marks+10 from stude;
update stude set marks=marks+10 from stude
                                *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> update stude set marks=marks+10;

5 rows updated.

SQL> select * from stude;

      ROLL NAME                      MARKS GRADE                                                                                                                                                                                                                    
---------- -------------------- ---------- --------------------                                                                                                                                                                                                     
         1 A                            70 C                                                                                                                                                                                                                        
         2 B                            80 B                                                                                                                                                                                                                        
         3 C                            90 A                                                                                                                                                                                                                        
         4 D                            70 D                                                                                                                                                                                                                        
         5 A                            90 E                                                                                                                                                                                                                        

SQL> rollback s1;
rollback s1
         *
ERROR at line 1:
ORA-02181: invalid option to ROLLBACK WORK 


SQL> rollback to s1;

Rollback complete.

SQL> select * from stude;

      ROLL NAME                      MARKS GRADE                                                                                                                                                                                                                    
---------- -------------------- ---------- --------------------                                                                                                                                                                                                     
         1 A                            60 C                                                                                                                                                                                                                        
         2 B                            70 B                                                                                                                                                                                                                        
         3 C                            80 A                                                                                                                                                                                                                        
         4 D                            60 D                                                                                                                                                                                                                        
         5 A                            80 E                                                                                                                                                                                                                        

SQL> commit;

Commit complete.

SQL> disconn;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> spool off;
