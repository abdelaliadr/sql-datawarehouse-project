--EXAMPLES OF QUALITY OF DATA CHECKS
--GETTING DUPLICATE AND NULL VALUES
SELECT cst_id, COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

--GETTING THE LAST NEW FRESH DATA
SELECT *, ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_date DESC ) as flag_last FROM bronze.crm_cust_info
WHERE cst_id = 29466;


--CHECKING FOR UNWANTED SPACES
SELECT cst_firstname
FROM bronze.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname);

