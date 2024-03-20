# sf-saas-provider-automate-iceberg-listings

# Repository contains code samples to help SaaS Providers build private listings and provision data in their Iceberg tables to their customers

Copyright &copy; 2023 Snowflake Inc. All rights reserved.

---
>This code is not part of the Snowflake Service and is governed by the terms in LICENSE.txt, unless expressly agreed to in writing.  Your use of this code is at your own risk, and Snowflake has no obligation to support your use of this code.
---


## WHAT IS IN THE REPOSITORY?
--------------------------

There are two scripts:
* setup.sql - this will create a database (SAAS_ICEBERG), schema (SAAS_ICEBERG), REQUESTS and CUSTOMER_REQUESTS_FULFILLED table (in the SAAS_ICEBERG schema of the SAAS_ICEBERG database).  Please change the database & schema name as needed.
* sproc_for_creating_iceberg_listings.sql - Builds a stored procedure that takes two arguments to build private listings at scale using the Iceberg table(s) as the data product.


USAGE
---
1. Ensure that __CUSTOMER_REQUESTS_FULFILLED__ table is created in the calling database.
2. Pass the two required arguments - __Customer Name__ and __Account Name__. The Snowflake Account Identifier is in the format ORGNAME.ACCOUNTNAME.  _The Customer Name refers to the ACCOUNTNAME portion of the Account Identifier_.  The second argument _Account Name refers to the COMPLETE Account Identifier_.

Once the stored procedure is compiled, you can either call it from the Snowsight worksheet or via a SQL API call.
