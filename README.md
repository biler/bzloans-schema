# bzloans-schema
MS SQL Server T-SQL Script for Biler Solutions Loan System


![Entity Relationship Diagram](erd.png?raw=true "ERD")

## Requirements

* MS SQL Server Server 2012 or higher


## Usage

Import the bzloans.sql script using Management Studio to create the tables


## Tables

* customer_profile - contains the info about your customer: name, address etc
* loan_applications - each new application is entered in here
* branch - list all branches available.
* schedule_of_payments - when the loan is approved, schedule of payments is inserted in here
* approved_loans - all applications that is approved goes here
* loans_release - all approved loans scheduled for release goes here
