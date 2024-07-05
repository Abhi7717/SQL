SQL> connect
Enter user-name: dbms
ERROR:
ORA-01017: invalid username/password; logon denied 


SQL> connect
Enter user-name: dbms
Connected.
SQL> create table student_2044(roll int,name varchar(20),marks number(5,2),dob date);

Table created.

SQL> create table studentt_2044(StudentId int,First varchar(20),First varchar(20),Street varchar(20),City varchar(20),State varchar(20),Zip int,StartTerm varchar(10),dob date,FacultyId varchar(20),MajorId varchar(20),Phone int);
create table studentt_2044(StudentId int,First varchar(20),First varchar(20),Street varchar(20),City varchar(20),State varchar(20),Zip int,StartTerm varchar(10),dob date,FacultyId varchar(20),MajorId varchar(20),Phone int)
                                                           *
ERROR at line 1:
ORA-00957: duplicate column name 


SQL> create table studentt_2044(StudentId int,First varchar(20),First varchar(20),Street varchar(20),City varchar(20),State varchar(20),Zip int,StartTerm varchar(10),dob date,FacultyId int,MajorId varchar(20),Phone int);
create table studentt_2044(StudentId int,First varchar(20),First varchar(20),Street varchar(20),City varchar(20),State varchar(20),Zip int,StartTerm varchar(10),dob date,FacultyId int,MajorId varchar(20),Phone int)
                                                           *
ERROR at line 1:
ORA-00957: duplicate column name 


SQL> create table studentt_2044(StudentId int,First varchar(20),Last varchar(20),Street varchar(20),City varchar(20),State varchar(20),Zip int,StartTerm varchar(10),dob date,FacultyId varchar(20),MajorId varchar(20),Phone int);

Table created.

SQL> insert into studentt_2044 values(2044,'Abhijit','Kumar','cinema road','jamshedpur','jharkhand',831002,1st sem,08-jan-1999,3876sa,AS567,7717767692)
  2  ;
insert into studentt_2044 values(2044,'Abhijit','Kumar','cinema road','jamshedpur','jharkhand',831002,1st sem,08-jan-1999,3876sa,AS567,7717767692)
                                                                                                       *
ERROR at line 1:
ORA-00917: missing comma 


SQL> insert into studentt_2044 values(2044,'Abhijit','Kumar','cinema road','jamshedpur','jharkhand',831002,'1st sem',08-jan-1999,3876sa,AS567,7717767692);
insert into studentt_2044 values(2044,'Abhijit','Kumar','cinema road','jamshedpur','jharkhand',831002,'1st sem',08-jan-1999,3876sa,AS567,7717767692)
                                                                                                                                *
ERROR at line 1:
ORA-00917: missing comma 


SQL> insert into studentt_2044 values(2044,'Abhijit','Kumar','cinema road','jamshedpur','jharkhand',831002,'1st sem',08-jan-1999,'3876sa','AS567',7717767692);
insert into studentt_2044 values(2044,'Abhijit','Kumar','cinema road','jamshedpur','jharkhand',831002,'1st sem',08-jan-1999,'3876sa','AS567',7717767692)
                                                                                                                   *
ERROR at line 1:
ORA-00984: column not allowed here 


SQL> insert into studentt_2044 values(2044,'Abhijit','Kumar','cinema road','jamshedpur','jharkhand',831002,'1st sem','08-jan-1999','3876sa','AS567',7717767692);

1 row created.

SQL> insert into studentt_2044 values(2045,'Adtiya','Kumar','atyapurt road','jamshedpur','jharkhand',831052,'1st sem','08-jan-1989','387GDF','AG767',7717567692);

1 row created.

SQL> insert into studentt_2044 values(2046,'harshit','Kumar','atyapurt road','jamshedpur','jharkhand',831052,'1st sem','08-jan-2022','38gGDF','AG747',7717589692);

1 row created.

SQL> insert into studentt_2044 values(2047,'Nayan','Kumar','Delhi road','Delhi','new Delhi',838952,'1st sem','08-jan-2002','3KLGDF','AH77',6517589692);

1 row created.

SQL> insert into studentt_2044 values(2048,'Ratinder','Kumar','patna road','patana','bihar',800952,'1st sem','10-JUL-2012','378GDF','AIH77',651749692);

1 row created.

SQL> select * studentt_2044
  2  ;
select * studentt_2044
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select *from studentt_2044;

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
                                                                                

SQL> create table room_2044(RoomType varchar(20),RoomDesc varchar(20));

Table created.

SQL> insert into room_2044 values('3BHK','royal');

1 row created.

SQL> insert into room_2044 values('2BHK','maple');

1 row created.

SQL> select *from room_2044;

ROOMTYPE             ROOMDESC                                                   
-------------------- --------------------                                       
3BHK                 royal                                                      
2BHK                 maple                                                      

SQL> create table registration_2044(StudentId varchar(20),CsId varchar(20),Midterm varhar(20),Final varchar(20),RegStatus varchar(20));
create table registration_2044(StudentId varchar(20),CsId varchar(20),Midterm varhar(20),Final varchar(20),RegStatus varchar(20))
                                                                                    *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> create table registration_2044(StudentId varchar(20),CsId varchar(20),Midterm varhar(20),Final varchar(20),RegStatus varchar(20));
create table registration_2044(StudentId varchar(20),CsId varchar(20),Midterm varhar(20),Final varchar(20),RegStatus varchar(20))
                                                                                    *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> create table registration_2044(StudentId varchar(20),CsId varchar(20),Midterm varchar(20),Final varchar(20),RegStatus varchar(20));

Table created.

SQL> insert into registration_2044 values('2044','cse1','89','90','completed');

1 row created.

SQL> insert into registration_2044 values('2045','cse1','69\','78','not completed');

1 row created.

SQL> insert into registration_2044 values('2046','cse1','58','48','completed');

1 row created.

SQL> insert into registration_2044 values('2047','cse1','68','58','not completed');

1 row created.

SQL> insert into registration_2044 values('2048','cse1','78','68','completed');

1 row created.

SQL> select *from registration_2044
  2  ;

STUDENTID            CSID                 MIDTERM                               
-------------------- -------------------- --------------------                  
FINAL                REGSTATUS                                                  
-------------------- --------------------                                       
2044                 cse1                 89                                    
90                   completed                                                  
                                                                                
2045                 cse1                 69\                                   
78                   not completed                                              
                                                                                
2046                 cse1                 58                                    
48                   completed                                                  
                                                                                

STUDENTID            CSID                 MIDTERM                               
-------------------- -------------------- --------------------                  
FINAL                REGSTATUS                                                  
-------------------- --------------------                                       
2047                 cse1                 68                                    
58                   not completed                                              
                                                                                
2048                 cse1                 78                                    
68                   completed                                                  
                                                                                

SQL> set line 260;
SQL> select *from registration_2044;

STUDENTID            CSID                 MIDTERM              FINAL                REGSTATUS                                                                                                                                                                       
-------------------- -------------------- -------------------- -------------------- --------------------                                                                                                                                                            
2044                 cse1                 89                   90                   completed                                                                                                                                                                       
2045                 cse1                 69\                  78                   not completed                                                                                                                                                                   
2046                 cse1                 58                   48                   completed                                                                                                                                                                       
2047                 cse1                 68                   58                   not completed                                                                                                                                                                   
2048                 cse1                 78                   68                   completed                                                                                                                                                                       

SQL> insert into room_2044 values('5BHK','vinyl');

1 row created.

SQL> insert into room_2044 values('5BHK','tile');

1 row created.

SQL> insert into room_2044 values('5BHK','carpet');

1 row created.

SQL> select * from room_2044;

ROOMTYPE             ROOMDESC                                                                                                                                                                                                                                       
-------------------- --------------------                                                                                                                                                                                                                           
3BHK                 royal                                                                                                                                                                                                                                          
2BHK                 maple                                                                                                                                                                                                                                          
5BHK                 vinyl                                                                                                                                                                                                                                          
5BHK                 tile                                                                                                                                                                                                                                           
5BHK                 carpet                                                                                                                                                                                                                                         

SQL> create table department_2044(DeptId varchar(20),DeptName varchar(20),FacultyId varchar(20));

Table created.

SQL> insert into department_2044 values('cse67','cse','bishwajit765');

1 row created.

SQL> insert into department_2044 values('mech78','mech','manoj87');

1 row created.

SQL> insert into department_2044 values('elect98','elect','shruti98');

1 row created.

SQL> insert into department_2044 values('civil54','civil','ipshita55');

1 row created.

SQL> insert into department_2044 values('chemical90','chemical','prashnt50');

1 row created.

SQL> select
  2  * from department_2044;

DEPTID               DEPTNAME             FACULTYID                                                                                                                                                                                                                 
-------------------- -------------------- --------------------                                                                                                                                                                                                      
cse67                cse                  bishwajit765                                                                                                                                                                                                              
mech78               mech                 manoj87                                                                                                                                                                                                                   
elect98              elect                shruti98                                                                                                                                                                                                                  
civil54              civil                ipshita55                                                                                                                                                                                                                 
chemical90           chemical             prashnt50                                                                                                                                                                                                                 

SQL> create table loaction_2044(RoomId varchar(20),Building varchar(20),RoomNo int,Capacity int,RoomType varchar(20));

Table created.

SQL> insert into location_2044 values('b-324','kp-9c','324','3','3-beded');
insert into location_2044 values('b-324','kp-9c','324','3','3-beded')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into loaction_2044 values('b-324','kp-9c','324','3','3-beded');

1 row created.

SQL> insert into loaction_2044 values('c-314','kp-9c','314','3','3-beded');

1 row created.

SQL> insert into loaction_2044 values('a-214','kp-9c','214','3','3-beded');

1 row created.

SQL> insert into loaction_2044 values('c-114','kp-5','314','2','2-beded');

1 row created.

SQL> insert into loaction_2044 values('414','kp-15','314','2','2-beded-AC');

1 row created.

SQL> select * from loaction_2044;

ROOMID               BUILDING                 ROOMNO   CAPACITY ROOMTYPE                                                                                                                                                                                            
-------------------- -------------------- ---------- ---------- --------------------                                                                                                                                                                                
b-324                kp-9c                       324          3 3-beded                                                                                                                                                                                             
c-314                kp-9c                       314          3 3-beded                                                                                                                                                                                             
a-214                kp-9c                       214          3 3-beded                                                                                                                                                                                             
c-114                kp-5                        314          2 2-beded                                                                                                                                                                                             
414                  kp-15                       314          2 2-beded-AC                                                                                                                                                                                          

SQL> create table Course_2044(CourseId varchar(20),Title varchar(20),Credits int,PreReq varchar(20));

Table created.

SQL> insert into loaction_2044 values('dbms23','dbms',3,'dsa');
insert into loaction_2044 values('dbms23','dbms',3,'dsa')
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> insert into Course_2044 values('dbms23','dbms',3,'dsa');

1 row created.

SQL> insert into Course_2044 values('coa23','coa',4,'dsa');

1 row created.

SQL> insert into Course_2044 values('afl33','afl',4,'oop');

1 row created.

SQL> insert into Course_2044 values('os33','os',3,'dsa');

1 row created.

SQL> insert into Course_2044 values('networking33','networking',4,'oops');

1 row created.

SQL> select  * from Course_2044
  2  ;

COURSEID             TITLE                   CREDITS PREREQ                                                                                                                                                                                                         
-------------------- -------------------- ---------- --------------------                                                                                                                                                                                           
dbms23               dbms                          3 dsa                                                                                                                                                                                                            
coa23                coa                           4 dsa                                                                                                                                                                                                            
afl33                afl                           4 oop                                                                                                                                                                                                            
os33                 os                            3 dsa                                                                                                                                                                                                            
networking33         networking                    4 oops                                                                                                                                                                                                           

SQL> select *from studentt_2044;

 STUDENTID FIRST                LAST                 STREET               CITY                 STATE                       ZIP STARTTERM  DOB       FACULTYID            MAJORID                   PHONE                                                            
---------- -------------------- -------------------- -------------------- -------------------- -------------------- ---------- ---------- --------- -------------------- -------------------- ----------                                                            
      2044 Abhijit              Kumar                cinema road          jamshedpur           jharkhand                831002 1st sem    08-JAN-99 3876sa               AS567                7717767692                                                            
      2045 Adtiya               Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-89 387GDF               AG767                7717567692                                                            
      2046 harshit              Kumar                atyapurt road        jamshedpur           jharkhand                831052 1st sem    08-JAN-22 38gGDF               AG747                7717589692                                                            
      2047 Nayan                Kumar                Delhi road           Delhi                new Delhi                838952 1st sem    08-JAN-02 3KLGDF               AH77                 6517589692                                                            
      2048 Ratinder             Kumar                patna road           patana               bihar                    800952 1st sem    10-JUL-12 378GDF               AIH77                 651749692                                                            

SQL> select * from major
  2  _2044;
_2044
*
ERROR at line 2:
ORA-00911: invalid character 


SQL> select * from major_2044;
select * from major_2044
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from Major_2044;
select * from Major_2044
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> spool off;
