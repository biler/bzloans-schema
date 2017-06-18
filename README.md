# bzloans-schema
MS SQL Server T-SQL Script for Biler Solutions Loan System


![Entity Relationship Diagram](erd.png?raw=true "ERD")

## Requirements

* MS SQL Server Server 2012 or higher
* SQL Server Management Studio

## Usage


- download this file in your local disk
```
https://raw.githubusercontent.com/biler/bzloans-schema/master/bzloans.sql
```
- connect to your SQL Server via SS Management Studio
- create a new database called bzloans
- in menu, select the bzloans.sql file by:  File > Open > File
- with the file open, click Execute

## Tables

* customer_profiles - contains the info about your customer: name, address etc
* loan_applications - each new application is entered in here
* branches - list all branches available.
* schedule_of_payments - when the loan is approved, schedule of payments is inserted in here
* approved_loans - all applications that is approved goes here
* released_loans - all approved loans scheduled for release goes here
* customer - the account holder who wants to apply for loan
* staffs - people in bank who accepts, processes and approves loan applications
* schedule_of_payments - when a certain loan is released, the amortization is broke down into its components and its corresponding dates via schedule of payments

## LICENSE

The project is licensed under [MIT LICENSE](MIT.md).
