--- Creating Table object in the Bronze layer. -------------------------
=================================================================================
----- /*---- Creating 6 table objects. Firstly, check and drop the table if it previously existed and create a new one */
===============================================================================================


USE master;
GO

USE DataWarehouse;


IF OBJECT_ID ('bronze.crm_cust_info','U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;

CREATE TABLE bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_last_name NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE
);


IF OBJECT_ID ('bronze.crm_prd_info','U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;

CREATE TABLE bronze.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost NVARCHAR(50),
prd_line NVARCHAR(50),
prd_start_date NVARCHAR(50),
prd_end_date DATE
);



IF OBJECT_ID ('bronze.crm_sales_info','U') IS NOT NULL
	DROP TABLE bronze.crm_sales_info;

CREATE TABLE bronze.crm_sales_info(
sls_ord_num INT,
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT

);

IF OBJECT_ID ('bronze.erp_cust_az12','U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;

CREATE TABLE bronze.erp_cust_az12(
	cid NVARCHAR (50),
	bdate DATE,
	gen NVARCHAR(50)

);

IF OBJECT_ID ('bronze.erp_loc_a101',' U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;

CREATE TABLE bronze.erp_loc_a101(
	id NVARCHAR(50),
	cat NVARCHAR (50)

);

IF OBJECT_ID (' bronze.erp_cat_g1v2','U') IS NOT NULL
	DROP TABLE  bronze.erp_cat_g1v2;

CREATE TABLE bronze.erp_cat_g1v2(
	subcat NVARCHAR(50),
	MAintainance NVARCHAR(50),
	gen NVARCHAR (50)

);
