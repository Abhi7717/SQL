SQL> connect
Enter user-name: dbms
Connected.
SQL> create table stu(roll int,name varchar(20));

Table created.

SQL> stu rename stu_2044;
SP2-0734: unknown command beginning "stu rename..." - rest of line ignored.
SQL> rename stu to stu_2044;

Table renamed.

SQL> insert into stu_2044 values(2044,'abhijit');

1 row created.

SQL> 
SQL> alter table stu_2044 constraint pr primary key(roll);
alter table stu_2044 constraint pr primary key(roll)
                     *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option 


SQL> ALTER TABLE STU_2044 CONSTRAINT PR PRIMARY KEY(ROLL);
ALTER TABLE STU_2044 CONSTRAINT PR PRIMARY KEY(ROLL)
                     *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option 


SQL> drop table stu_2044;

Table dropped.

SQL> create table stu_2044(roll int,name varchar(20));

Table created.

SQL> ALTER TABLE STU_2044 CONSTRAINT PR PRIMARY KEY(ROLL);
ALTER TABLE STU_2044 CONSTRAINT PR PRIMARY KEY(ROLL)
                     *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option 


SQL> ALTER TABLE STU_2044 ADD CONSTRAINT PR PRIMARY KEY(ROLL);

Table altered.

SQL> insert into stu_2044 values(2044,'abhijit');

1 row created.

SQL> insert into stu_2044 values(2045,'adtiya');

1 row created.

SQL> select constrain_name,contraint_type from user_constraints where TABLE_NAME='stu_2044';
select constrain_name,contraint_type from user_constraints where TABLE_NAME='stu_2044'
                      *
ERROR at line 1:
ORA-00904: "CONTRAINT_TYPE": invalid identifier 


SQL> select constrain_name,constraint_type from user_constraints where TABLE_NAME='stu_2044';
select constrain_name,constraint_type from user_constraints where TABLE_NAME='stu_2044'
       *
ERROR at line 1:
ORA-00904: "CONSTRAIN_NAME": invalid identifier 


SQL> select constraint_name,constraint_type from user_constraints where TABLE_NAME='stu_2044';

no rows selected

SQL> creat table stu_2044(roll int constraint u1 unique, name varchar(20));
SP2-0734: unknown command beginning "creat tabl..." - rest of line ignored.
SQL> create table stu_2044(roll int constraint u1 unique, name varchar(20));
create table stu_2044(roll int constraint u1 unique, name varchar(20))
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> create table stu(roll int constraint u1 unique, name varchar(20));

Table created.

SQL> insert into stu values(null,'abc');

1 row created.

SQL> drop table stu;

Table dropped.

SQL> create table stu(roll int,name varchar(20));

Table created.

SQL> alter table stu add constraint u1 unique(roll);

Table altered.

SQL> drop table stu;

Table dropped.

SQL> create table stu(roll int default 0, name varchar(20));

Table created.

SQL> create table register(roll int constraint pk primary key,name varchar(20));

Table created.

SQL> insert into register values(1,'a');

1 row created.

SQL> insert into register values(2,'b');

1 row created.

SQL> insert into daily att(3,getdate(),'c');
insert into daily att(3,getdate(),'c')
                      *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> insert into daily att values(3,getdate(),'c');
insert into daily att values(3,getdate(),'c')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into daily_att values(3,getdate(),'c');
insert into daily_att values(3,getdate(),'c')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> create table daily_att(roll int constraint rf references register(roll),date1 date,course varchar(20));

Table created.

SQL> insert into daily_att values(3,getdate(),'c');
insert into daily_att values(3,getdate(),'c')
                               *
ERROR at line 1:
ORA-00904: "GETDATE": invalid identifier 


SQL> insert into daily_att values(3,sysdate,'c');
insert into daily_att values(3,sysdate,'c')
*
ERROR at line 1:
ORA-02291: integrity constraint (DBMS.RF) violated - parent key not found 


SQL> insert into daily_att values(1,sysdate,'c');

1 row created.

SQL> drop table register;
drop table register
           *
ERROR at line 1:
ORA-02449: unique/primary keys in table referenced by foreign keys 


SQL> drope table register;
SP2-0734: unknown command beginning "drope tabl..." - rest of line ignored.
SQL> drop table register;
drop table register
           *
ERROR at line 1:
ORA-02449: unique/primary keys in table referenced by foreign keys 


SQL> create table register2(roll int constraint pk primary key ondelete cascade,name varchar(20));
create table register2(roll int constraint pk primary key ondelete cascade,name varchar(20))
                                                          *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> insert into daily_att values(1,sysdate,'c');

1 row created.

SQL> alter table daily_att add foreign key (roll) references register(roll);
alter table daily_att add foreign key (roll) references register(roll)
                          *
ERROR at line 1:
ORA-02275: such a referential constraint already exists in the table 


SQL> spool off;
