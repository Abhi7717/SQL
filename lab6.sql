SQL> connect
Enter user-name: dbms
Connected.
SQL> select * from dual;

D                                                                               
-                                                                               
X                                                                               

SQL> desc dual;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DUMMY                                              VARCHAR2(1)

SQL> select initcap('abc') from dual;

INI                                                                             
---                                                                             
Abc                                                                             

SQL> select sysdate from dula;
select sysdate from dula
                    *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select sysdate from dual;

SYSDATE                                                                         
---------                                                                       
01-MAR-23                                                                       

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
APEX$_ACL                      TABLE                                            
APEX$_WS_FILES                 TABLE                                            
APEX$_WS_HISTORY               TABLE                                            
APEX$_WS_LINKS                 TABLE                                            
APEX$_WS_NOTES                 TABLE                                            
APEX$_WS_ROWS                  TABLE                                            
APEX$_WS_TAGS                  TABLE                                            
APEX$_WS_WEBPG_SECTIONS        TABLE                                            
APEX$_WS_WEBPG_SECTION_HISTORY TABLE                                            
BIN$6JSbVbL9TRijGrEr9uPJ3Q==$0 TABLE                                            
BIN$Lyc6KBq7T7i1t1mREbYG7Q==$0 TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BIN$ffRfv8acRz27yy35iV2EGQ==$0 TABLE                                            
BIN$pAdGZalZRAKB6aqhpQIPeA==$0 TABLE                                            
BIN$qy/hVFUMR9OkmiwhKS70+g==$0 TABLE                                            
BIN$r6IzHa1fRcavF2G3RYgaJg==$0 TABLE                                            
COURSE5473                     TABLE                                            
COURSE_2044                    TABLE                                            
DAILY_ATT                      TABLE                                            
DEMO_CUSTOMERS                 TABLE                                            
DEMO_ORDERS                    TABLE                                            
DEMO_ORDER_ITEMS               TABLE                                            
DEMO_PRODUCT_INFO              TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
DEMO_STATES                    TABLE                                            
DEMO_USERS                     TABLE                                            
DEPARTMENT                     TABLE                                            
DEPARTMENT_2044                TABLE                                            
DEPENDENT                      TABLE                                            
DEPT                           TABLE                                            
EMP                            TABLE                                            
EMPLEVEL                       TABLE                                            
EMPLOYEE                       TABLE                                            
LIBRARY_21052044               TABLE                                            
LIBRARY_75                     TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
LOACTION_2044                  TABLE                                            
MAJOR5473                      TABLE                                            
POSITION                       TABLE                                            
QUALIFICATION                  TABLE                                            
REGISTER                       TABLE                                            
REGISTRATION_2044              TABLE                                            
ROOM_2044                      TABLE                                            
STU                            TABLE                                            
STUD                           TABLE                                            
STUD5_2044                     TABLE                                            
STUDE                          TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
STUDENT                        TABLE                                            
STUDENT5473                    TABLE                                            
STUDENTT                       TABLE                                            
STUDENTT_2044                  TABLE                                            
STUDENT_2044                   TABLE                                            
STUDENT_21052044               TABLE                                            
STUDENT_75                     TABLE                                            
STU_2044                       TABLE                                            

52 rows selected.

SQL> create table bigbazar
  2  (item_name varchar(20),item_no varchar(10), item_qty int,item_price number(5,2),item_mfg_date date,item_exp_date date,order_no varchar(10));

Table created.

SQL> insert into bigbazar values(NULL,'col101',20,75.95,'12-jan-2023','27-apr-2017','ord101');

1 row created.

SQL> insert into bigbazar values('lux_shoap','lu102',15,25.40,'19-jul-2001','30-mar-2019','ord1029');

1 row created.

SQL> insert into bigbazar values('dabur_honey','dab103',40,120.70,'20-mar-2015','12-jun-2020','ord1010);
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> insert into bigbazar values('dabur_honey','dab103',40,120.70,'20-mar-2015','12-jun-2020','ord1010');

1 row created.

SQL> insert into bigbazar values('tata_tea','tat104',50,98.50,'15-sep-2008',NULL,'ord1035');

1 row created.

SQL> insert into bigbazar values('surf_excel','sur105',NULL,285.60,'28-aug-2015','20-nov-2005','ord1030');

1 row created.

SQL> insert into bigbazar values('dettol_handwash','det106',42,45.50,'28-feb-2013','23-aug-2018','ord1020');

1 row created.

SQL> insert into bigbazar values('ashribad_atta','ash107',20,170.45,'28-jun-2007','20-sep-2019','ord1015');

1 row created.

SQL> insert into bigbazar values('horlicks',NULL,NULL,286.90,'29-oct-2012','30-jun-2018','ord1028');

1 row created.

SQL> insert into bigbazar values('Ariel_matic','arl110',30,230.80,'14-nov-2016',NULL,'ord1032');

1 row created.

SQL> insert into bigbazar values('ponds_power','pon111',50,85.90,'25-may-2011','30-apr-2020','ord1044');

1 row created.

SQL> insert into bigbazar values('tomato_katchup','tom112',30,35,'30-dec-2014','9-sep-2018',NULL);

1 row created.

SQL> insert into bigbazar values('patanjali_biscuit','pat113',39,25,'01-jan-2016','29-jun-2018','ord1061');

1 row created.

SQL> insert into bigbazar values('kissan_jam','kis114',NULL,90,'22-feb-2015','30-oct-2016','ord1037');

1 row created.

SQL> set linesize 360;
SQL> select * from bigbazar;

ITEM_NAME            ITEM_NO      ITEM_QTY ITEM_PRICE ITEM_MFG_ ITEM_EXP_ ORDER_NO                                                                                                                                                                                                                                                                                      
-------------------- ---------- ---------- ---------- --------- --------- ----------                                                                                                                                                                                                                                                                                    
                     col101             20      75.95 12-JAN-23 27-APR-17 ord101                                                                                                                                                                                                                                                                                        
lux_shoap            lu102              15       25.4 19-JUL-01 30-MAR-19 ord1029                                                                                                                                                                                                                                                                                       
dabur_honey          dab103             40      120.7 20-MAR-15 12-JUN-20 ord1010                                                                                                                                                                                                                                                                                       
tata_tea             tat104             50       98.5 15-SEP-08           ord1035                                                                                                                                                                                                                                                                                       
surf_excel           sur105                     285.6 28-AUG-15 20-NOV-05 ord1030                                                                                                                                                                                                                                                                                       
dettol_handwash      det106             42       45.5 28-FEB-13 23-AUG-18 ord1020                                                                                                                                                                                                                                                                                       
ashribad_atta        ash107             20     170.45 28-JUN-07 20-SEP-19 ord1015                                                                                                                                                                                                                                                                                       
horlicks                                        286.9 29-OCT-12 30-JUN-18 ord1028                                                                                                                                                                                                                                                                                       
Ariel_matic          arl110             30      230.8 14-NOV-16           ord1032                                                                                                                                                                                                                                                                                       
ponds_power          pon111             50       85.9 25-MAY-11 30-APR-20 ord1044                                                                                                                                                                                                                                                                                       
tomato_katchup       tom112             30         35 30-DEC-14 09-SEP-18                                                                                                                                                                                                                                                                                               

ITEM_NAME            ITEM_NO      ITEM_QTY ITEM_PRICE ITEM_MFG_ ITEM_EXP_ ORDER_NO                                                                                                                                                                                                                                                                                      
-------------------- ---------- ---------- ---------- --------- --------- ----------                                                                                                                                                                                                                                                                                    
patanjali_biscuit    pat113             39         25 01-JAN-16 29-JUN-18 ord1061                                                                                                                                                                                                                                                                                       
kissan_jam           kis114                        90 22-FEB-15 30-OCT-16 ord1037                                                                                                                                                                                                                                                                                       

13 rows selected.

SQL> set linesize 500;
SQL> select * from bigbazar;

ITEM_NAME            ITEM_NO      ITEM_QTY ITEM_PRICE ITEM_MFG_ ITEM_EXP_ ORDER_NO                                                                                                                                                                                                                                                                                                                                                                                                                                  
-------------------- ---------- ---------- ---------- --------- --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                
                     col101             20      75.95 12-JAN-23 27-APR-17 ord101                                                                                                                                                                                                                                                                                                                                                                                                                                    
lux_shoap            lu102              15       25.4 19-JUL-01 30-MAR-19 ord1029                                                                                                                                                                                                                                                                                                                                                                                                                                   
dabur_honey          dab103             40      120.7 20-MAR-15 12-JUN-20 ord1010                                                                                                                                                                                                                                                                                                                                                                                                                                   
tata_tea             tat104             50       98.5 15-SEP-08           ord1035                                                                                                                                                                                                                                                                                                                                                                                                                                   
surf_excel           sur105                     285.6 28-AUG-15 20-NOV-05 ord1030                                                                                                                                                                                                                                                                                                                                                                                                                                   
dettol_handwash      det106             42       45.5 28-FEB-13 23-AUG-18 ord1020                                                                                                                                                                                                                                                                                                                                                                                                                                   
ashribad_atta        ash107             20     170.45 28-JUN-07 20-SEP-19 ord1015                                                                                                                                                                                                                                                                                                                                                                                                                                   
horlicks                                        286.9 29-OCT-12 30-JUN-18 ord1028                                                                                                                                                                                                                                                                                                                                                                                                                                   
Ariel_matic          arl110             30      230.8 14-NOV-16           ord1032                                                                                                                                                                                                                                                                                                                                                                                                                                   
ponds_power          pon111             50       85.9 25-MAY-11 30-APR-20 ord1044                                                                                                                                                                                                                                                                                                                                                                                                                                   
tomato_katchup       tom112             30         35 30-DEC-14 09-SEP-18                                                                                                                                                                                                                                                                                                                                                                                                                                           

ITEM_NAME            ITEM_NO      ITEM_QTY ITEM_PRICE ITEM_MFG_ ITEM_EXP_ ORDER_NO                                                                                                                                                                                                                                                                                                                                                                                                                                  
-------------------- ---------- ---------- ---------- --------- --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                
patanjali_biscuit    pat113             39         25 01-JAN-16 29-JUN-18 ord1061                                                                                                                                                                                                                                                                                                                                                                                                                                   
kissan_jam           kis114                        90 22-FEB-15 30-OCT-16 ord1037                                                                                                                                                                                                                                                                                                                                                                                                                                   

13 rows selected.

SQL> select max(Item_qty) from bigbazar;

MAX(ITEM_QTY)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
-------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           50                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

SQL> commit;

Commit complete.

SQL> select item_name,item_price from bigbazar where (item_exp_date>'01-jun-2005');

ITEM_NAME            ITEM_PRICE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
-------------------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
                          75.95                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
lux_shoap                  25.4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
dabur_honey               120.7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
surf_excel                285.6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
dettol_handwash            45.5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
ashribad_atta            170.45                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
horlicks                  286.9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
ponds_power                85.9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
tomato_katchup               35                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
patanjali_biscuit            25                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
kissan_jam                   90                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     

11 rows selected.

SQL> select item_name,item_price from bigbazar where extract (month from item_exp_date)=6;

ITEM_NAME            ITEM_PRICE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
-------------------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
dabur_honey               120.7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
horlicks                  286.9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
patanjali_biscuit            25                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     

SQL> select item_name,item_price from bigbazar where(item_exp_date<sysdate);

ITEM_NAME            ITEM_PRICE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
-------------------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
                          75.95                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
lux_shoap                  25.4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
dabur_honey               120.7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
surf_excel                285.6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
dettol_handwash            45.5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
ashribad_atta            170.45                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
horlicks                  286.9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
ponds_power                85.9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
tomato_katchup               35                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
patanjali_biscuit            25                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
kissan_jam                   90                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     

11 rows selected.

SQL> spooloff;
SP2-0042: unknown command "spooloff" - rest of line ignored.
SQL> spooloff
SP2-0042: unknown command "spooloff" - rest of line ignored.
SQL> spool off
