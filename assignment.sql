SQL> connect
Enter user-name: dbms
Connected.
SQL> create table student_2044(roll int primary key, name varchar(20), gender varchar(1), dob date, book_issue_date date, book_return_date date);
create table student_2044(roll int primary key, name varchar(20), gender varchar(1), dob date, book_issue_date date, book_return_date date)
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> create table student_2044(roll int primary key, name varchar(20), gender varchar(1), dob date, book_issue_date date, book_return_date date);
create table student_2044(roll int primary key, name varchar(20), gender varchar(1), dob date, book_issue_date date, book_return_date date)
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> create table student_21052044
  2  (
  3  roll int primary key,
  4  name varchar(20) Not NULL,
  5  gender varchar(6),
  6  DOB date,
  7  Book_Issue_Date date,
  8  Book_Return_Date date);

Table created.

SQL> insert into student_21052044 values(1, 'John Doe', 'M', '15-May-1995', '1-Feb-2022', '15-Feb-2022');

1 row created.

SQL> insert into student_21052044 values(2, 'Jane Smith', 'F', '21-Sep-1998', '2-May-2022', '20-Feb-2022');

1 row created.

SQL> insert into student_21052044 values(3, 'Bob Johnson', 'M', '1-Jan-2000', '10-Feb-2022', '25-Feb-2022');

1 row created.

SQL> insert into student_21052044 values(4, 'Alice Lee', 'F', '30-Apr-1997', '12-Feb-2022', '27_Jan-2022');

1 row created.

SQL> insert into student_21052044 values(5, 'Tom Wilson', 'M', '11-Nov-1999', '15-Feb-2022', '1-Mar-2022');

1 row created.

SQL> set linesize 360;
SQL> select * from student_21052044;

      ROLL NAME                 GENDER DOB       BOOK_ISSU BOOK_RETU                                                                                                                                                                                                                                                                                                    
---------- -------------------- ------ --------- --------- ---------                                                                                                                                                                                                                                                                                                    
         1 John Doe             M      15-MAY-95 01-FEB-22 15-FEB-22                                                                                                                                                                                                                                                                                                    
         2 Jane Smith           F      21-SEP-98 02-MAY-22 20-FEB-22                                                                                                                                                                                                                                                                                                    
         3 Bob Johnson          M      01-JAN-00 10-FEB-22 25-FEB-22                                                                                                                                                                                                                                                                                                    
         4 Alice Lee            F      30-APR-97 12-FEB-22 27-JAN-22                                                                                                                                                                                                                                                                                                    
         5 Tom Wilson           M      11-NOV-99 15-FEB-22 01-MAR-22                                                                                                                                                                                                                                                                                                    

SQL> create table library_21052044(book_no int primary key, book_author varchar(20), book_publi varchar(20), book_name varchar(20), book_page int, book_price int, purchase_date date, roll int , book_issue_date date, book_return_date date, foreign key(roll) references student_279(roll));
create table library_21052044(book_no int primary key, book_author varchar(20), book_publi varchar(20), book_name varchar(20), book_page int, book_price int, purchase_date date, roll int , book_issue_date date, book_return_date date, foreign key(roll) references student_279(roll))
                                                                                                                                                                                                                                                                       *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> create table library_21052044(book_no int primary key, book_author varchar(20), book_publi varchar(20), book_name varchar(20), book_page int, book_price int, purchase_date date, roll int , book_issue_date date, book_return_date date, foreign key(roll) references student_279(roll));
create table library_21052044(book_no int primary key, book_author varchar(20), book_publi varchar(20), book_name varchar(20), book_page int, book_price int, purchase_date date, roll int , book_issue_date date, book_return_date date, foreign key(roll) references student_279(roll))
                                                                                                                                                                                                                                                                       *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> create table library_21052044(book_no int primary key, book_author varchar(20), book_publi varchar(20), book_name varchar(20), book_page int, book_price int, purchase_date date, roll int , book_issue_date date, book_return_date date, foreign key(r
  2  
SQL> CREATE TABLE Library_21052044 ( Book_No INT PRIMARY KEY,
  2      Book_Author VARCHAR(20),
  3      Book_Publi VARCHAR(30),
  4      Book_Name VARCHAR(30),
  5      Book_Page INT,
  6      Book_Price DECIMAL(10,2),
  7      Purchase_date DATE,
  8      roll INT,
  9      Book_Issue_date DATE,
 10     Book_Return_date DATE,
 11    CONSTRAINT fk_roll FOREIGN KEY (roll) REFERENCES Student(roll) );
  CONSTRAINT fk_roll FOREIGN KEY (roll) REFERENCES Student(roll) )
                                                           *
ERROR at line 11:
ORA-02270: no matching unique or primary key for this column-list 


SQL> CREATE TABLE Library_21052044 ( Book_No INT PRIMARY KEY,
  2      Book_Author VARCHAR(20),
  3      Book_Publi VARCHAR(30),
  4      Book_Name VARCHAR(30),
  5      Book_Page INT,
  6      Book_Price DECIMAL(10,2),
  7      Purchase_date DATE,
  8      roll INT,
  9      Book_Issue_date DATE,
 10     Book_Return_date DATE,
 11    CONSTRAINT fk_roll FOREIGN KEY (roll) REFERENCES Student_21052044(roll) );

Table created.

SQL> drope table library_21052044;
SP2-0734: unknown command beginning "drope tabl..." - rest of line ignored.
SQL> drop table library_21052044;

Table dropped.

SQL> create table library(book_no int primary key, book_author varchar(30), book_publi varchar(30), book_name varchar(30), book_page int, book_price int, purchase_date date, roll int , book_issue_date date, book_return_date date, foreign key(roll) references student_21052044(roll));

Table created.

SQL>  insert into library_279 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23');
 insert into library_279 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23')
             *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL>  insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23');
 insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23')
             *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23');
insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into library values(1,'alex michaelides','celadon books','the silent patient',296,599 ,'1-jan-2023',279,'25-feb-23','1-mar-23');
insert into library values(1,'alex michaelides','celadon books','the silent patient',296,599 ,'1-jan-2023',279,'25-feb-23','1-mar-23')
*
ERROR at line 1:
ORA-02291: integrity constraint (DBMS.SYS_C007379) violated - parent key not found 


SQL> rename library to library_2044;

Table renamed.

SQL> insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23');
insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> rename library to library_21052044;
rename library to library_21052044
*
ERROR at line 1:
ORA-04043: object LIBRARY does not exist 


SQL> rename library_2044 to library_21052044;

Table renamed.

SQL> insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23');
insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,279 , '25-feb-23', '1-mar-23')
*
ERROR at line 1:
ORA-02291: integrity constraint (DBMS.SYS_C007379) violated - parent key not found 


SQL> insert into library_21052044 values(&book_no,'&book_author', '&book_publi', '&book_name', &book_page, &book_price , '&purchase_date' ,&roll , '&book_issue_date', '&book_return_date');
Enter value for book_no: 1
Enter value for book_author: alex michaelides
Enter value for book_publi: celadon books
Enter value for book_name: the silent patient
Enter value for book_page: 296
Enter value for book_price: 599
Enter value for purchase_date: 1-jan-2023
Enter value for roll: 21052044
Enter value for book_issue_date: 25-feb-2023
Enter value for book_return_date: 1-mar-2023
old   1: insert into library_21052044 values(&book_no,'&book_author', '&book_publi', '&book_name', &book_page, &book_price , '&purchase_date' ,&roll , '&book_issue_date', '&book_return_date')
new   1: insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,21052044 , '25-feb-2023', '1-mar-2023')
insert into library_21052044 values(1,'alex michaelides', 'celadon books', 'the silent patient', 296, 599 , '1-jan-2023' ,21052044 , '25-feb-2023', '1-mar-2023')
*
ERROR at line 1:
ORA-02291: integrity constraint (DBMS.SYS_C007379) violated - parent key not found 


SQL> CREATE TABLE Library_21052044 ( Book_No INT PRIMARY KEY,
  2      Book_Author VARCHAR(20),
  3      Book_Publi VARCHAR(30),
  4      Book_Name VARCHAR(30),
  5      Book_Page INT,
  6      Book_Price DECIMAL(10,2),
  7      Purchase_date DATE,
  8      roll INT,
  9      Book_Issue_date DATE,
 10     Book_Return_date DATE,
 11    CONSTRAINT fk_roll FOREIGN KEY (roll) REFERENCES Student(roll) );
CREATE TABLE Library_21052044 ( Book_No INT PRIMARY KEY,
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> drop table library_21052044;

Table dropped.

SQL> CREATE TABLE Library_21052044 ( Book_No INT PRIMARY KEY,
  2      Book_Author VARCHAR(20),
  3      Book_Publi VARCHAR(30),
  4      Book_Name VARCHAR(30),
  5      Book_Page INT,
  6      Book_Price DECIMAL(10,2),
  7      Purchase_date DATE,
  8      roll INT,
  9      Book_Issue_date DATE,
 10     Book_Return_date DATE,
 11    CONSTRAINT fk_roll FOREIGN KEY (roll) REFERENCES Student_21052044(roll) );

Table created.

SQL> insert into Library values(3, 'George R.R. Martin', 'Bantam Spectra', 'A Game of Thrones', 694, 29.99, '10-Feb-2022', 3, '12-Feb-2022', '27-Feb-2022');
insert into Library values(3, 'George R.R. Martin', 'Bantam Spectra', 'A Game of Thrones', 694, 29.99, '10-Feb-2022', 3, '12-Feb-2022', '27-Feb-2022')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into Library_21052044 values(3, 'George R.R. Martin', 'Bantam Spectra', 'A Game of Thrones', 694, 29.99, '10-Feb-2022', 3, '12-Feb-2022', '27-Feb-2022');

1 row created.

SQL> insert into Library values(1, 'J.K. Rowling', 'Bloomsbury', 'Harry Potter and the Philosopher''s Stone', 223, 24.99, '1-Feb-2022', 1, '5-Feb-2022', '1-Mar-2022');
insert into Library values(1, 'J.K. Rowling', 'Bloomsbury', 'Harry Potter and the Philosopher''s Stone', 223, 24.99, '1-Feb-2022', 1, '5-Feb-2022', '1-Mar-2022')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into Library_21052044 values(1, 'J.K. Rowling', 'Bloomsbury', 'Harry Potter and the Philosopher''s Stone', 223, 24.99, '1-Feb-2022', 1, '5-Feb-2022', '1-Mar-2022');
insert into Library_21052044 values(1, 'J.K. Rowling', 'Bloomsbury', 'Harry Potter and the Philosopher''s Stone', 223, 24.99, '1-Feb-2022', 1, '5-Feb-2022', '1-Mar-2022')
                                                                     *
ERROR at line 1:
ORA-12899: value too large for column "DBMS"."LIBRARY_21052044"."BOOK_NAME" (actual: 40, maximum: 30) 


SQL> insert into Library_21052044 values(1, 'J.K. Rowling', 'Bloomsbury', 'Harry Potter''s Stone', 223, 24.99, '1-Feb-2022', 1, '5-Feb-2022', '1-Mar-2022');

1 row created.

SQL> insert into Library values(2, 'Stephenie Meyer', 'Little', Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022');
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> insert into Library values(2, 'Stephenie Meyer', 'Little', 'Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022');
insert into Library values(2, 'Stephenie Meyer', 'Little', 'Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into Library_21052044 values(2, 'Stephenie Meyer', 'Little', 'Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022');
insert into Library_21052044 values(2, 'Stephenie Meyer', 'Little', 'Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022')
            *
ERROR at line 1:
ORA-00913: too many values 


SQL> insert into Library_21052044 values(2, 'stephenie meye', 'little', 'brown and company','twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-feb-2022');
insert into Library_21052044 values(2, 'stephenie meye', 'little', 'brown and company','twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-feb-2022')
            *
ERROR at line 1:
ORA-00913: too many values 


SQL> insert into Library_21052044 values(2, 'Stephenie Meyer', 'Little','Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022');
insert into Library_21052044 values(2, 'Stephenie Meyer', 'Little','Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022')
            *
ERROR at line 1:
ORA-00913: too many values 


SQL> insert into Library values(5, 'J.R.R. Tolkien', 'George Allen 3', 'The Lord of the Rings', 1178, 49.99, '15-Feb-2022', 5, '20-Feb-2022', '05-Mar-2022');
insert into Library values(5, 'J.R.R. Tolkien', 'George Allen 3', 'The Lord of the Rings', 1178, 49.99, '15-Feb-2022', 5, '20-Feb-2022', '05-Mar-2022')
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into Library_21052044 values(5, 'J.R.R. Tolkien', 'George Allen 3', 'The Lord of the Rings', 1178, 49.99, '15-Feb-2022', 5, '20-Feb-2022', '05-Mar-2022');

1 row created.

SQL> insert into Library_21052044 values(2, 'Stephenie Meyer', 'Little, Brown and Company', 'Twilight', 498, 19.99, '5-Feb-2022', 2, '10-Feb-2022', '25-Feb-2022');

1 row created.

SQL> select * from library_21052044;

   BOOK_NO BOOK_AUTHOR          BOOK_PUBLI                     BOOK_NAME                       BOOK_PAGE BOOK_PRICE PURCHASE_       ROLL BOOK_ISSU BOOK_RETU                                                                                                                                                                                                            
---------- -------------------- ------------------------------ ------------------------------ ---------- ---------- --------- ---------- --------- ---------                                                                                                                                                                                                            
         3 George R.R. Martin   Bantam Spectra                 A Game of Thrones                     694      29.99 10-FEB-22          3 12-FEB-22 27-FEB-22                                                                                                                                                                                                            
         1 J.K. Rowling         Bloomsbury                     Harry Potter's Stone                  223      24.99 01-FEB-22          1 05-FEB-22 01-MAR-22                                                                                                                                                                                                            
         5 J.R.R. Tolkien       George Allen 3                 The Lord of the Rings                1178      49.99 15-FEB-22          5 20-FEB-22 05-MAR-22                                                                                                                                                                                                            
         2 Stephenie Meyer      Little, Brown and Company      Twilight                              498      19.99 05-FEB-22          2 10-FEB-22 25-FEB-22                                                                                                                                                                                                            

SQL> insert into Library_21052044 values(5, 'J.R.R. Tolkien', 'George Allen 3', 'The Lord of the Rings', 1178, 49.99, '15-Feb-2022', 5, '20-Feb-2022', '05-Mar-2022');
insert into Library_21052044 values(5, 'J.R.R. Tolkien', 'George Allen 3', 'The Lord of the Rings', 1178, 49.99, '15-Feb-2022', 5, '20-Feb-2022', '05-Mar-2022')
*
ERROR at line 1:
ORA-00001: unique constraint (DBMS.SYS_C007380) violated 


SQL> insert into Library_21052044 values(4, 'suzanne collins','scholastic press','the hunger games',374,14.99,'12-feb-2023',4,'15-feb-2023','28-feb-2023');

1 row created.

SQL> select * from library_21052044;

   BOOK_NO BOOK_AUTHOR          BOOK_PUBLI                     BOOK_NAME                       BOOK_PAGE BOOK_PRICE PURCHASE_       ROLL BOOK_ISSU BOOK_RETU                                                                                                                                                                                                            
---------- -------------------- ------------------------------ ------------------------------ ---------- ---------- --------- ---------- --------- ---------                                                                                                                                                                                                            
         3 George R.R. Martin   Bantam Spectra                 A Game of Thrones                     694      29.99 10-FEB-22          3 12-FEB-22 27-FEB-22                                                                                                                                                                                                            
         1 J.K. Rowling         Bloomsbury                     Harry Potter's Stone                  223      24.99 01-FEB-22          1 05-FEB-22 01-MAR-22                                                                                                                                                                                                            
         5 J.R.R. Tolkien       George Allen 3                 The Lord of the Rings                1178      49.99 15-FEB-22          5 20-FEB-22 05-MAR-22                                                                                                                                                                                                            
         2 Stephenie Meyer      Little, Brown and Company      Twilight                              498      19.99 05-FEB-22          2 10-FEB-22 25-FEB-22                                                                                                                                                                                                            
         4 suzanne collins      scholastic press               the hunger games                      374      14.99 12-FEB-23          4 15-FEB-23 28-FEB-23                                                                                                                                                                                                            

SQL> select * from student_21052044;

      ROLL NAME                 GENDER DOB       BOOK_ISSU BOOK_RETU                                                                                                                                                                                                                                                                                                    
---------- -------------------- ------ --------- --------- ---------                                                                                                                                                                                                                                                                                                    
         1 John Doe             M      15-MAY-95 01-FEB-22 15-FEB-22                                                                                                                                                                                                                                                                                                    
         2 Jane Smith           F      21-SEP-98 02-MAY-22 20-FEB-22                                                                                                                                                                                                                                                                                                    
         3 Bob Johnson          M      01-JAN-00 10-FEB-22 25-FEB-22                                                                                                                                                                                                                                                                                                    
         4 Alice Lee            F      30-APR-97 12-FEB-22 27-JAN-22                                                                                                                                                                                                                                                                                                    
         5 Tom Wilson           M      11-NOV-99 15-FEB-22 01-MAR-22                                                                                                                                                                                                                                                                                                    

SQL> UPDATE STUDENT_21052044 SET BOOK_RETURN_DATE='01-AUG-2022' WHERE ROLL=2;

1 row updated.

SQL> UPDATE STUDENT_21052044 SET BOOK_RETURN_DATE='01-AUG-2022' WHERE ROLL=4;

1 row updated.

SQL> select * from student_21052044;

      ROLL NAME                 GENDER DOB       BOOK_ISSU BOOK_RETU                                                                                                                                                                                                                                                                                                    
---------- -------------------- ------ --------- --------- ---------                                                                                                                                                                                                                                                                                                    
         1 John Doe             M      15-MAY-95 01-FEB-22 15-FEB-22                                                                                                                                                                                                                                                                                                    
         2 Jane Smith           F      21-SEP-98 02-MAY-22 01-AUG-22                                                                                                                                                                                                                                                                                                    
         3 Bob Johnson          M      01-JAN-00 10-FEB-22 25-FEB-22                                                                                                                                                                                                                                                                                                    
         4 Alice Lee            F      30-APR-97 12-FEB-22 01-AUG-22                                                                                                                                                                                                                                                                                                    
         5 Tom Wilson           M      11-NOV-99 15-FEB-22 01-MAR-22                                                                                                                                                                                                                                                                                                    

SQL> Alter table Student_21052044 modify name varchar(20) Not NULL;
Alter table Student_21052044 modify name varchar(20) Not NULL
                                    *
ERROR at line 1:
ORA-01442: column to be modified to NOT NULL is already NOT NULL 


SQL> Alter table Student_21052044 modify name varchar(20);

Table altered.

SQL> Alter table Student_21052044 modify name varchar(20) Not NULL;
Alter table Student_21052044 modify name varchar(20) Not NULL
                                    *
ERROR at line 1:
ORA-01442: column to be modified to NOT NULL is already NOT NULL 


SQL> Alter table Library_21052044 modify Book_Name varchar(35) Not NULL;

Table altered.

SQL> ALTER TABLE STUDENT_21052044 ADD CONSTRAINT CHK_D1 CHECK(DOB>'26-feb-2023');
ALTER TABLE STUDENT_21052044 ADD CONSTRAINT CHK_D1 CHECK(DOB>'26-feb-2023')
                                            *
ERROR at line 1:
ORA-02293: cannot validate (DBMS.CHK_D1) - check constraint violated 


SQL> UPDATE STUDENT_21052044 SET DOB='01-AUG-2002';

5 rows updated.

SQL> ALTER TABLE STUDENT_21052044 ADD CONSTRAINT CHK_D1 CHECK(DOB<'26-feb-2023');

Table altered.

SQL> ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L1 CHECK(Book_page>56);

Table altered.

SQL> ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L3 CHECK(Gender ='M' or Gender = 'F');
ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L3 CHECK(Gender ='M' or Gender = 'F')
                                                                        *
ERROR at line 1:
ORA-00904: "GENDER": invalid identifier 


SQL> ALTER TABLE Student_21052044 ADD CONSTRAINT CHK_L3 CHECK(Gender ='M' or Gender = 'F');

Table altered.

SQL> ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L5 CHECK(Purchase_date<Book_issue);
ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L5 CHECK(Purchase_date<Book_issue)
                                                                       *
ERROR at line 1:
ORA-00904: "BOOK_ISSUE": invalid identifier 


SQL> ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L5 CHECK(Purchase_date<Book_issue_date);

Table altered.

SQL> ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L5 CHECK(Book_issue_date<Book_return_date);
ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L5 CHECK(Book_issue_date<Book_return_date)
                                            *
ERROR at line 1:
ORA-02264: name already used by an existing constraint 


SQL> ALTER TABLE Library_21052044 ADD CONSTRAINT CHK_L6 CHECK(Book_issue_date<Book_return_date);

Table altered.

SQL> select * from student_21052044;

      ROLL NAME                 GENDER DOB       BOOK_ISSU BOOK_RETU                                                                                                                                                                                                                                                                                                    
---------- -------------------- ------ --------- --------- ---------                                                                                                                                                                                                                                                                                                    
         1 John Doe             M      01-AUG-02 01-FEB-22 15-FEB-22                                                                                                                                                                                                                                                                                                    
         2 Jane Smith           F      01-AUG-02 02-MAY-22 01-AUG-22                                                                                                                                                                                                                                                                                                    
         3 Bob Johnson          M      01-AUG-02 10-FEB-22 25-FEB-22                                                                                                                                                                                                                                                                                                    
         4 Alice Lee            F      01-AUG-02 12-FEB-22 01-AUG-22                                                                                                                                                                                                                                                                                                    
         5 Tom Wilson           M      01-AUG-02 15-FEB-22 01-MAR-22                                                                                                                                                                                                                                                                                                    

SQL> rename student_21052044 to student_75;

Table renamed.

SQL> rename student_75 to student_21052044;

Table renamed.

SQL> create table student_21052044
  2    2  (
  3    3  roll int primary key,
  4    4  name varchar(20) Not NULL,
  5    5  gender varchar(6),
  6    6  DOB date,
  7    7  Book_Issue_Date date,
  8  
SQL> 
SQL> create table student_21052044
  2    2  (
  3    3  roll int primary key,
  4    4  name varchar(20) Not NULL,
  5    5  gender varchar(6),
  6    6  DOB date,
  7    7  Book_Issue_Date date,
  8  
SQL> 
SQL> create table student_75(roll int perimary key, name varchar(20) not NULL,gender varchar(6),DOB date,book_issue_date date,book_retrun_date date);
create table student_75(roll int perimary key, name varchar(20) not NULL,gender varchar(6),DOB date,book_issue_date date,book_retrun_date date)
                                 *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> create table student_75(roll int perimary key, name varchar(20) Not NULL,gender varchar(6),DOB date,book_issue_date date,book_retrun_date date);
create table student_75(roll int perimary key, name varchar(20) Not NULL,gender varchar(6),DOB date,book_issue_date date,book_retrun_date date)
                                 *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> spool off;
