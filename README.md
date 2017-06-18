# bzloans-schema
MS SQL Server T-SQL Script for Biler Solutions Loan System


![Entity Relationship Diagram](erd.png?raw=true "ERD")

## Requirements

* MS SQL Server Server 2012 or higher


## Usage


- download this file in your local disk
```
https://raw.githubusercontent.com/biler/bzloans-schema/master/bzloans.sql
```
- connect to your SQL Server via SQ Management Studio
- create a new database called bzloans
- in menu, select the bzloans.sql file by:  File > Open > File
- with the file open, click Execute

## Tables

* customer_profile - contains the info about your customer: name, address etc
* loan_applications - each new application is entered in here
* branch - list all branches available.
* schedule_of_payments - when the loan is approved, schedule of payments is inserted in here
* approved_loans - all applications that is approved goes here
* loans_release - all approved loans scheduled for release goes here
