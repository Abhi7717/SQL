SQL> connect
Enter user-name: dbms
Connected.
SQL> select * from studentt_2044;

 STUDENTID FIRST                LAST                 STREET                     
---------- -------------------- -------------------- --------------------       
CITY                 STATE                       ZIP STARTTERM  DOB             
-------------------- -------------------- ---------- ---------- ---------       
FACULTYID            MAJORID                   PHONE                            
-------------------- -------------------- ----------                            
      2044 Abhijit              Kumar                cinema road                
jamshedpur           jharkhand                831002 1st sem    08-JAN-99       
3876sa               AS567                7717767692                            
                                                                                
      2045 Adtiya               Kumar                atyapurt road              
jamshedpur           jharkhand                831052 1st sem    08-JAN-89       
387GDF               AG767                7717567692                            

 STUDENTID FIRST                LAST                 STREET                     
---------- -------------------- -------------------- --------------------       
CITY                 STATE                       ZIP STARTTERM  DOB             
-------------------- -------------------- ---------- ---------- ---------       
FACULTYID            MAJORID                   PHONE                            
-------------------- -------------------- ----------                            
                                                                                
      2046 harshit              Kumar                atyapurt road              
jamshedpur           jharkhand                831052 1st sem    08-JAN-22       
38gGDF               AG747                7717589692                            
                                                                                
      2047 Nayan                Kumar                Delhi road                 
Delhi                new Delhi                838952 1st sem    08-JAN-02       

 STUDENTID FIRST                LAST                 STREET                     
---------- -------------------- -------------------- --------------------       
CITY                 STATE                       ZIP STARTTERM  DOB             
-------------------- -------------------- ---------- ---------- ---------       
FACULTYID            MAJORID                   PHONE                            
-------------------- -------------------- ----------                            
3KLGDF               AH77                 6517589692                            
                                                                                
      2048 Ratinder             Kumar                patna road                 
patana               bihar                    800952 1st sem    10-JUL-12       
378GDF               AIH77                 651749692                            
                                                                                

SQL> setline size 360
SP2-0734: unknown command beginning "setline si..." - rest of line ignored.
SQL> set line size 360
SP2-0268: linesize option not a valid number
SQL> set linesize 360
SQL> select * from studentt_2044;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  DOB       FACULTYID            MAJORID                   PHONE                                                                                                                                                                
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- --------- -------------------- -------------------- ----------                                                                                                                                                                
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    08-JAN-99 3876sa               AS567                7717767692                                                                                                                                                                
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-89 387GDF               AG767                7717567692                                                                                                                                                                
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-22 38gGDF               AG747                7717589692                                                                                                                                                                
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    08-JAN-02 3KLGDF               AH77                 6517589692                                                                                                                                                                
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    10-JUL-12 378GDF               AIH77                 651749692                                                                                                                                                                

SQL> select * from studentt_2044;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  DOB       FACULTYID            MAJORID                   PHONE                                                                                                                                                                
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- --------- -------------------- -------------------- ----------                                                                                                                                                                
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    08-JAN-99 3876sa               AS567                7717767692                                                                                                                                                                
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-89 387GDF               AG767                7717567692                                                                                                                                                                
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-22 38gGDF               AG747                7717589692                                                                                                                                                                
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    08-JAN-02 3KLGDF               AH77                 6517589692                                                                                                                                                                
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    10-JUL-12 378GDF               AIH77                 651749692                                                                                                                                                                

SQL> insert into studentt_2044 values(&studentid,'&first','&last','&street');
Enter value for studentid: 2049
Enter value for first: shruti
Enter value for last: kola
Enter value for street: delhi
old   1: insert into studentt_2044 values(&studentid,'&first','&last','&street')
new   1: insert into studentt_2044 values(2049,'shruti','kola','delhi')
insert into studentt_2044 values(2049,'shruti','kola','delhi')
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> insert into studentt_2044 values(&studentid,'&first','&last','&street','&city','&state',&zip,'&startterm','&dob','&facultyid','&majorid',&phone);
Enter value for studentid: 2049
Enter value for first: shruti
Enter value for last: kola
Enter value for street: delhi
Enter value for city: patia
Enter value for state: new delhi
Enter value for zip: 893776
Enter value for startterm: 1st sem
Enter value for dob: 09-jul-2001
Enter value for facultyid: 76dcdc
Enter value for majorid: AA65
Enter value for phone: 734530902334
old   1: insert into studentt_2044 values(&studentid,'&first','&last','&street','&city','&state',&zip,'&startterm','&dob','&facultyid','&majorid',&phone)
new   1: insert into studentt_2044 values(2049,'shruti','kola','delhi','patia','new delhi',893776,'1st sem','09-jul-2001','76dcdc','AA65',734530902334)

1 row created.

SQL> select * from studentt_2044;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  DOB       FACULTYID            MAJORID                   PHONE                                                                                                                                                                
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- --------- -------------------- -------------------- ----------                                                                                                                                                                
      2049 shruti               kola                 delhi                patia                new delhi                893776 1st sem    09-JUL-01 76dcdc               AA65                 7.3453E+11                                                                                                                                                                
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    08-JAN-99 3876sa               AS567                7717767692                                                                                                                                                                
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-89 387GDF               AG767                7717567692                                                                                                                                                                
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-22 38gGDF               AG747                7717589692                                                                                                                                                                
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    08-JAN-02 3KLGDF               AH77                 6517589692                                                                                                                                                                
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    10-JUL-12 378GDF               AIH77                 651749692                                                                                                                                                                

6 rows selected.

SQL> select * from studentt_2044 order by studentid;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  DOB       FACULTYID            MAJORID                   PHONE                                                                                                                                                                
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- --------- -------------------- -------------------- ----------                                                                                                                                                                
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    08-JAN-99 3876sa               AS567                7717767692                                                                                                                                                                
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-89 387GDF               AG767                7717567692                                                                                                                                                                
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-22 38gGDF               AG747                7717589692                                                                                                                                                                
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    08-JAN-02 3KLGDF               AH77                 6517589692                                                                                                                                                                
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    10-JUL-12 378GDF               AIH77                 651749692                                                                                                                                                                
      2049 shruti               kola                 delhi                patia                new delhi                893776 1st sem    09-JUL-01 76dcdc               AA65                 7.3453E+11                                                                                                                                                                

6 rows selected.

SQL> select * from stud6_2044;
select * from stud6_2044
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> alter table studentt_2044 drop column DOB;

Table altered.

SQL> select * from stud6_2044;
select * from stud6_2044
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from studentt_2044 order by studentid;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  FACULTYID            MAJORID                   PHONE                                                                                                                                                                          
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- -------------------- -------------------- ----------                                                                                                                                                                          
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    3876sa               AS567                7717767692                                                                                                                                                                          
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    387GDF               AG767                7717567692                                                                                                                                                                          
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    38gGDF               AG747                7717589692                                                                                                                                                                          
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    3KLGDF               AH77                 6517589692                                                                                                                                                                          
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    378GDF               AIH77                 651749692                                                                                                                                                                          
      2049 shruti               kola                 delhi                patia                new delhi                893776 1st sem    76dcdc               AA65                 7.3453E+11                                                                                                                                                                          

6 rows selected.

SQL> alter table studentt_2044 add DOB date;

Table altered.

SQL> select * from stud6_2044;
select * from stud6_2044
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from studentt_2044 order by studentid;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  FACULTYID            MAJORID                   PHONE DOB                                                                                                                                                                      
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- -------------------- -------------------- ---------- ---------                                                                                                                                                                
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    3876sa               AS567                7717767692                                                                                                                                                                          
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    387GDF               AG767                7717567692                                                                                                                                                                          
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    38gGDF               AG747                7717589692                                                                                                                                                                          
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    3KLGDF               AH77                 6517589692                                                                                                                                                                          
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    378GDF               AIH77                 651749692                                                                                                                                                                          
      2049 shruti               kola                 delhi                patia                new delhi                893776 1st sem    76dcdc               AA65                 7.3453E+11                                                                                                                                                                          

6 rows selected.

SQL> update studentt_2044 set DOB = '04-DEC-2022';

6 rows updated.

SQL> select * from studentt_2044 order by studentid;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  FACULTYID            MAJORID                   PHONE DOB                                                                                                                                                                      
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- -------------------- -------------------- ---------- ---------                                                                                                                                                                
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    3876sa               AS567                7717767692 04-DEC-22                                                                                                                                                                
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    387GDF               AG767                7717567692 04-DEC-22                                                                                                                                                                
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    38gGDF               AG747                7717589692 04-DEC-22                                                                                                                                                                
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    3KLGDF               AH77                 6517589692 04-DEC-22                                                                                                                                                                
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    378GDF               AIH77                 651749692 04-DEC-22                                                                                                                                                                
      2049 shruti               kola                 delhi                patia                new delhi                893776 1st sem    76dcdc               AA65                 7.3453E+11 04-DEC-22                                                                                                                                                                

6 rows selected.

SQL> seelect roll,count(marks) from stud5 grioup  by roll having count(mark)>1;
SP2-0734: unknown command beginning "seelect ro..." - rest of line ignored.
SQL> seelect roll,count(marks) from stud5 grioup  by roll having count(mark)>1;
SP2-0734: unknown command beginning "seelect ro..." - rest of line ignored.
SQL> select * from stud5;

      ROLL NAME                      MARKS                                                                                                                                                                                                                                                                                                                              
---------- -------------------- ----------                                                                                                                                                                                                                                                                                                                              
      2044 Abhijit kumar                80                                                                                                                                                                                                                                                                                                                              
      2045 Harshit kumar             85.55                                                                                                                                                                                                                                                                                                                              
      2046 Aditya kumar              85.55                                                                                                                                                                                                                                                                                                                              
      2047 Ratindra kumar            90.55                                                                                                                                                                                                                                                                                                                              
      2048 Mukul kumar               97.55                                                                                                                                                                                                                                                                                                                              

SQL> update stud5 set DOB = '04-DEC-2022';
update stud5 set DOB = '04-DEC-2022'
                 *
ERROR at line 1:
ORA-00904: "DOB": invalid identifier 


SQL> alter table stud5 add DOB date;

Table altered.

SQL> update stud5 set DOB = '04-DEC-2022';

5 rows updated.

SQL> select * from stud5;

      ROLL NAME                      MARKS DOB                                                                                                                                                                                                                                                                                                                          
---------- -------------------- ---------- ---------                                                                                                                                                                                                                                                                                                                    
      2044 Abhijit kumar                80 04-DEC-22                                                                                                                                                                                                                                                                                                                    
      2045 Harshit kumar             85.55 04-DEC-22                                                                                                                                                                                                                                                                                                                    
      2046 Aditya kumar              85.55 04-DEC-22                                                                                                                                                                                                                                                                                                                    
      2047 Ratindra kumar            90.55 04-DEC-22                                                                                                                                                                                                                                                                                                                    
      2048 Mukul kumar               97.55 04-DEC-22                                                                                                                                                                                                                                                                                                                    

SQL> select roll,marks from stud5 group by roll having marks>60 marks<90;
select roll,marks from stud5 group by roll having marks>60 marks<90
                                                           *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select roll,marks from stud5 group by roll having marks>60;
select roll,marks from stud5 group by roll having marks>60
                                                  *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select roll,marks from stud5 group by roll having marks>60;
select roll,marks from stud5 group by roll having marks>60
                                                  *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> rename stud5 to stud5_2044;

Table renamed.

SQL> select roll,marks from stud5_2044 where marks>60 and marks<70;

no rows selected

SQL> select * from stud5_2044 where name like '%s%';

      ROLL NAME                      MARKS DOB                                                                                                                                                                                                                                                                                                                          
---------- -------------------- ---------- ---------                                                                                                                                                                                                                                                                                                                    
      2045 Harshit kumar             85.55 04-DEC-22                                                                                                                                                                                                                                                                                                                    

SQL> alter table stud5_2044 modify name varchar(50);

Table altered.

SQL> desc stud5_2044;
 Name                                                                                                                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------------------------------
 ROLL                                                                                                                                                                                                                       NUMBER(38)
 NAME                                                                                                                                                                                                                       VARCHAR2(50)
 MARKS                                                                                                                                                                                                                      NUMBER(5,2)
 DOB                                                                                                                                                                                                                        DATE

SQL> update stud5_2044 set mark = mark + 10;
update stud5_2044 set mark = mark + 10
                             *
ERROR at line 1:
ORA-00904: "MARK": invalid identifier 


SQL> update stud5_2044 set marks = marks + 10;

5 rows updated.

SQL> select * from stud5_2044;

      ROLL NAME                                                    MARKS DOB                                                                                                                                                                                                                                                                                            
---------- -------------------------------------------------- ---------- ---------                                                                                                                                                                                                                                                                                      
      2044 Abhijit kumar                                              90 04-DEC-22                                                                                                                                                                                                                                                                                      
      2045 Harshit kumar                                           95.55 04-DEC-22                                                                                                                                                                                                                                                                                      
      2046 Aditya kumar                                            95.55 04-DEC-22                                                                                                                                                                                                                                                                                      
      2047 Ratindra kumar                                         100.55 04-DEC-22                                                                                                                                                                                                                                                                                      
      2048 Mukul kumar                                            107.55 04-DEC-22                                                                                                                                                                                                                                                                                      

SQL> spool off;
