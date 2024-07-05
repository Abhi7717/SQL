SQL> connect
Enter user-name: dbms
Connected.
SQL> select table_names from  user_tables;
select table_names from  user_tables
       *
ERROR at line 1:
ORA-00904: "TABLE_NAMES": invalid identifier 


SQL> select table_name from  user_tables;

TABLE_NAME                                                                      
------------------------------                                                  
STUDENT                                                                         
STUD5_2044                                                                      
STUDENTT                                                                        
STUDENT5473                                                                     
COURSE5473                                                                      
MAJOR5473                                                                       
STUDENT_2044                                                                    
STUDENTT_2044                                                                   
ROOM_2044                                                                       
REGISTRATION_2044                                                               
DEPARTMENT_2044                                                                 

TABLE_NAME                                                                      
------------------------------                                                  
LOACTION_2044                                                                   
COURSE_2044                                                                     
STUDE                                                                           
STU_2044                                                                        
STU                                                                             
REGISTER                                                                        
DAILY_ATT                                                                       
EMPLOYEE                                                                        
POSITION                                                                        
DEPARTMENT                                                                      
QUALIFICATION                                                                   

TABLE_NAME                                                                      
------------------------------                                                  
EMPLEVEL                                                                        
DEPENDENT                                                                       
STUDENT_21052044                                                                
LIBRARY_21052044                                                                
STUDENT_75                                                                      
LIBRARY_75                                                                      
BIGBAZAR                                                                        
EMPLOYEEE                                                                       
BOOKS                                                                           
STUDE_2044                                                                      
STUDENT_44                                                                      

TABLE_NAME                                                                      
------------------------------                                                  
FACULTY_44                                                                      
DEPT                                                                            
EMP                                                                             
DEMO_USERS                                                                      
DEMO_CUSTOMERS                                                                  
DEMO_ORDERS                                                                     
DEMO_PRODUCT_INFO                                                               
DEMO_ORDER_ITEMS                                                                
DEMO_STATES                                                                     
APEX$_ACL                                                                       
APEX$_WS_WEBPG_SECTIONS                                                         

TABLE_NAME                                                                      
------------------------------                                                  
APEX$_WS_ROWS                                                                   
APEX$_WS_HISTORY                                                                
APEX$_WS_NOTES                                                                  
APEX$_WS_LINKS                                                                  
APEX$_WS_TAGS                                                                   
APEX$_WS_FILES                                                                  
APEX$_WS_WEBPG_SECTION_HISTORY                                                  
STUD                                                                            

52 rows selected.

SQL> Select * from Student_44;

  STU_ROLL NAME                 DOB             MARK BRANCH     SECTION         
---------- -------------------- --------- ---------- ---------- ----------      
           Amit                 13-MAY-10        600 sec        it-1            
           ajay                 25-SEP-09        550 it         it-2            
           rohit                15-DEC-08        450 it         cs-1            
           mukesh               02-NOV-07        390 sce        cs-2            
           john                 30-MAR-05        400 it         cs-3            

SQL> Select * from FACULTY_44;

FACULTY_ID FAC_NAME               STU_ROLL FAC_SUBJEC CLASS_ROOM CLASS_DAT      
---------- -------------------- ---------- ---------- ---------- ---------      
           joseph                          java       c1                        
           stephen                         c++        c2                        
           richardson                      dotnet     c3                        
           james                           php        c4                        
           aks                             oracle     c5                        

SQL> create sequence Std1 inncrement by 1 staart with 1 maxvalue 5;
create sequence Std1 inncrement by 1 staart with 1 maxvalue 5
                     *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> create sequence Std1 increment by 1 start with 1 maxvalue 5;

Sequence created.

SQL> update Student_44 set Stu_Roll=Std1.nextval where name='Amit';

1 row updated.

SQL> update Student_44 set Stu_Roll=Std1.nextval where name='Ajay';

0 rows updated.

SQL> update Student_44 set Stu_Roll=Std1.nextval where name='ajay';

1 row updated.

SQL> update Student_44 set Stu_Roll=Std1.nextval where name='rohit';

1 row updated.

SQL> update Student_44 set Stu_Roll=Std1.nextval where name='mukesh';

1 row updated.

SQL> update Student_44 set Stu_Roll=Std1.nextval where name='john';

1 row updated.

SQL> Select * from Student_44;

  STU_ROLL NAME                 DOB             MARK BRANCH     SECTION         
---------- -------------------- --------- ---------- ---------- ----------      
         1 Amit                 13-MAY-10        600 sec        it-1            
         2 ajay                 25-SEP-09        550 it         it-2            
         3 rohit                15-DEC-08        450 it         cs-1            
         4 mukesh               02-NOV-07        390 sce        cs-2            
         5 john                 30-MAR-05        400 it         cs-3            

SQL> Select * from Faculty_44;

FACULTY_ID FAC_NAME               STU_ROLL FAC_SUBJEC CLASS_ROOM CLASS_DAT      
---------- -------------------- ---------- ---------- ---------- ---------      
           joseph                          java       c1                        
           stephen                         c++        c2                        
           richardson                      dotnet     c3                        
           james                           php        c4                        
           aks                             oracle     c5                        

SQL> create sequence Fac1 increment by 1 start with 3 maxvalue 13;

Sequence created.

SQL> Drop sequence Fac1;

Sequence dropped.

SQL> create sequence Fac1 increment by 3 start with 1 maxvalue 13;

Sequence created.

SQL> create sequence Fac2 increment by 1 start with 1 maxvalue 9;

Sequence created.

SQL> update Faculty_44 set Faculty_Id=Fac1.nextval where Class_Room='c1';

1 row updated.

SQL> update Faculty_44 set Faculty_Id=Fac1.nextval where Class_Room='c2';

1 row updated.

SQL> update Faculty_44 set Faculty_Id=Fac1.nextval where Class_Room='c3';

1 row updated.

SQL> update Faculty_44 set Faculty_Id=Fac1.nextval where Class_Room='c4';

1 row updated.

SQL> update Faculty_44 set Faculty_Id=Fac1.nextval where Class_Room='c5';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c1';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c2';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c3';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c4';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c5';

1 row updated.

SQL> Select * from Faculty_44;

FACULTY_ID FAC_NAME               STU_ROLL FAC_SUBJEC CLASS_ROOM CLASS_DAT      
---------- -------------------- ---------- ---------- ---------- ---------      
         1 joseph                        1 java       c1                        
         4 stephen                       2 c++        c2                        
         7 richardson                    3 dotnet     c3                        
        10 james                         4 php        c4                        
        13 aks                           5 oracle     c5                        

SQL> Drop Sequence Fac2;

Sequence dropped.

SQL> create sequence Fac2 increment by 2 start with 1 maxvalue 9;

Sequence created.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c1';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c2';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c3';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c4';

1 row updated.

SQL> update Faculty_44 set Stu_Roll=Fac2.nextval where Class_Room='c5';

1 row updated.

SQL> Select * from Faculty_44;

FACULTY_ID FAC_NAME               STU_ROLL FAC_SUBJEC CLASS_ROOM CLASS_DAT      
---------- -------------------- ---------- ---------- ---------- ---------      
         1 joseph                        1 java       c1                        
         4 stephen                       3 c++        c2                        
         7 richardson                    5 dotnet     c3                        
        10 james                         7 php        c4                        
        13 aks                           9 oracle     c5                        

SQL> Select sequencr_name,min_value,max_value,increment_by,last_number from user_sequences;
Select sequencr_name,min_value,max_value,increment_by,last_number from user_sequences
       *
ERROR at line 1:
ORA-00904: "SEQUENCR_NAME": invalid identifier 


SQL> Select sequence_name,min_value,max_value,increment_by,last_number from user_sequences;

SEQUENCE_NAME                   MIN_VALUE  MAX_VALUE INCREMENT_BY LAST_NUMBER   
------------------------------ ---------- ---------- ------------ -----------   
DEMO_CUST_SEQ                           1 1.0000E+28            1          21   
DEMO_ORDER_ITEMS_SEQ                    1 1.0000E+28            1          61   
DEMO_ORD_SEQ                            1 1.0000E+28            1          11   
DEMO_PROD_SEQ                           1 1.0000E+28            1          21   
DEMO_USERS_SEQ                          1 1.0000E+28            1          21   
FAC1                                    1         13            3          16   
FAC2                                    1          9            2          11   
STD1                                    1          5            1           6   

8 rows selected.

SQL> drop Sequence Stu1;
drop Sequence Stu1
              *
ERROR at line 1:
ORA-02289: sequence does not exist 


SQL> drop Sequence Std1;

Sequence dropped.

SQL> drop Sequence Fac1;

Sequence dropped.

SQL> drop Sequence Fac2;

Sequence dropped.

SQL> commit;

Commit complete.

SQL> disconn
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> spool off;
