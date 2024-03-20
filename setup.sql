//create a database - name it whatever you want
create database SAAS_ICEBERG;
use database SAAS_ICEBERG;
create schema SAAS_ICEBERG;
use schema SAAS_ICEBERG;

//use an existing warehouse.  If need be, create one.

//commands for creating warehouse. Uncomment to run
//use role <ACCOUNTADMIN or SYSADMIN>;

//CREATE WAREHOUSE <warehouse_name> WITH AUTO_RESUME = TRUE 
//WAREHOUSE_SIZE = <size> // size = {XSMALL | SMALL | MEDIUM | LARGE | XLARGE | XXLARGE | XXXLARGE | X4LARGE} AUTO_SUSPEND = <time_in_seconds>;
use warehouse <warehouse_name>; //change to whatever warehouse you plan to use.

//create a table to capture all the sharing activity

create or replace table CUSTOMER_REQUESTS_FULFILLED (
        listing_name varchar(100),
        share_name varchar(50),
        customer varchar(50),
        account_name varchar(50),
        time_fulfilled timestamp
        );