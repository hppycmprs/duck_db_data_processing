3. Theory questions

These study questions are good to get an overview of how SQL and relational databases work.

  a) What is SQL, and why is it important in relational databases?

  SQL stands for Structured Query Language. This is a declarative language used to store, retrieve, update and otherwise manage data in relational databases. A relational database organizes structured data into tables of rows and columns. In relational databases, different tables can be connected through common keys, allowing data from multiple tables to be combined and queried.

  b) Explain the difference between FROM and WHERE clauses.

  The FROM clause refers to the source of the data, typically a table. The WHERE clause, on the other hand, filters rows based on specific conditions.

  c) Explain the purpose of the LIMIT or OFFSET clause in a SQL query.

  The LIMIT clause lets you limit the number of rows shown from a table. The OFFSET clause allows you to decide how many rows, starting from the top, you want to skip.

  d) What are the primary functions of the Data Definition Language (DDL) in SQL?

  Whenever you manage the structure of a given table, you are in fact using DDL. The most common functions of DDL are: CREATE, ALTER, DROP and TRUNCATE. 

  e) Explain the differences between the Data Manipulation Language (DML) and Data Definition Language (DDL).

  The main difference is that DML is responsible for managing the content of a table, while DDL manages the structure. Note that both languages are sublanguages of SQL.

f) What makes DuckDB unique compared to other databases?

DuckDB is easy to install and use, does not require a separate database server, and is optimised for analysing large amounts of data using complex SQL queries. It can also read data directly from files such as CSV and Parquet.

g) Is DuckDB suitable for real-time data processing?

DuckDB is mainly an OLAP (Online Analytical Processing) database and is not primarily designed for real-time data processing. It is optimised for analysing large amounts of data, while OLTP (Online Transaction Processing) databases are better suited for handling many small transactions quickly and reliably, for example in banking systems. However, DuckDB can still be used for certain near-real-time analytical tasks.

  h) Difference between read_csv and read_csv_auto

In modern versions of DuckDB, there is essentially no difference between the two, since both now can identify the structure of the file. Historically however, the difference was that read_csv_auto automatically identified the structure, while read_csv presumed that the programmer provided the file's structure.