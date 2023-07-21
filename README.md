# SQL Notes
Contains SQL practise problems and solutions.

## **Things to Keep in Mind:**
- Single statement SQL were solved focusing on [oracle database](https://www.oracle.com/database/) whereas PL/pgSQL were written focusing on [postgreSQL](https://www.postgresql.org/).
- Most of the files use [sample hr database](https://www.sqltutorial.org/sql-sample-database/) of oracle sql. So before running them, your system must be connected to sample hr database.

__*This repository contain my solutions to the practise problems and sql written by me. Your solution may differ.*__
<hr>

 ## **How to Use it:**
 - Open the [oracle handbook](assets/oracle_sql_handbook.pdf) from assets
 - Read the topics and try to solve the practise problems
 - If you are stuck you can see the solution from this repository. Use the index section.
 <hr>

## **Index:** 
_**Single Statement SQL**_
 - **Chapter 2: Retrieve Data From Database Tables**
   - [Selecting Data Using Basic SELECT Statement](single_statement_sql/2-1.sql)
   - [SELECT Statement with WHERE Clause](single_statement_sql/2-2.sql)
   - [Sorting Rows in the Output](single_statement_sql/2-3.sql)
 - **Chapter 3: Use of Oracle Single Row Functions**
   - [Character Functions](single_statement_sql/3-1.sql)
   - [Number Functions](single_statement_sql/3-2.sql)
   - [Date Functions](single_statement_sql/3-3.sql)
   - [Functions for Manipulating NULL values](single_statement_sql/3-4.sql)
   - [Data Type Conversion Functions](single_statement_sql/3-5.sql)
 - **Chapter 4: Aggregate Functions**
   - [Retrieve Aggregate Information: Simple GROUP BY queries](single_statement_sql/4-1.sql)
   - [DISTINCT and HAVING in GROUP BY query](single_statement_sql/4-2.sql)
   - [Advanced GROUP BY queries](single_statement_sql/4-3.sql)
 - **Chapter 5: Query Multiple Tables - Joins**
   - [Oracle Joins to Retrieve Data from Multiple Tables](single_statement_sql/5-1.sql)
 - **Chapter 6: Query Multiple Tables - Sub-query**
   - [Retrieving Records using Sub-query](single_statement_sql/6-1.sql)
 - **Chapter 7: Set Operations**
   - [Performing Set Operations](single_statement_sql/7-1.sql)
 - **Chapter 8: Data Manipulation Language(DML)**
   - [Inserting Data into Table](single_statement_sql/8-1.sql)
   - [Changing Data in a Table](single_statement_sql/8-2.sql)
   - [Deleting Rows from a Table](single_statement_sql/8-3.sql)
 - **Chapter 9: Data Definition Language(DDL)**
   - [Creating Tables](single_statement_sql/9-1.sql)
   - [Specifying Constraints in Tables](single_statement_sql/9-2.sql)
   - [Add or Remove Table Columns](single_statement_sql/9-4.sql)
<hr>

_**PL/pgSQL**_
- [Anonymous Block](pgsql/1.sql)
- [Variable](pgsql/variable/)
- [Errors & Messages](pgsql/5.sql)
- [Control Statement](pgsql/control_statement/)
- [Loop](pgsql/loop/)
- [Function](pgsql/function/)
- [Trigger](pgsql/trigger/)
<hr>

## **Resources:**
- [postgreSQL documentation](https://www.postgresql.org/docs/)
- [postgreSQL tutorial](https://www.postgresqltutorial.com/)
- [sql for generating hr schema](assets/create_hr_schema.sql)
 


