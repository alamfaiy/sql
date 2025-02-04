<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="C:/Users/Faiyza/OneDrive - University of Toronto/Old Desktop/DSI/SQL/sql/05_src/sql/farmersmarket.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser query pragmas" current="2"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="8651"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/><expanded_item id="4" parent="1"/></tab_structure><tab_browse><table title="product" custom_title="0" dock_id="1" table="4,7:mainproduct"/><dock_state state="000000ff00000000fd0000000100000002000004c9000002b6fc0100000001fb000000160064006f0063006b00420072006f00770073006500310100000000000004c90000011e00ffffff0000029f0000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="booth" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="90"/><column index="2" value="108"/><column index="3" value="300"/><column index="4" value="72"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="customer" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="77"/><column index="2" value="127"/><column index="3" value="125"/><column index="4" value="136"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="customer_purchases" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="69"/><column index="2" value="64"/><column index="3" value="85"/><column index="4" value="79"/><column index="5" value="55"/><column index="6" value="158"/><column index="7" value="103"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="product" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="69"/><column index="2" value="296"/><column index="3" value="117"/><column index="4" value="126"/><column index="5" value="107"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="product_category" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="124"/><column index="2" value="234"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="temp" name="product_units" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="69"/><column index="2" value="296"/><column index="3" value="80"/><column index="4" value="124"/><column index="5" value="107"/><column index="6" value="156"/><column index="7" value="102"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="vendor" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="64"/><column index="2" value="257"/><column index="3" value="234"/><column index="4" value="156"/><column index="5" value="154"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="vendor_booth_assignments" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="66"/><column index="2" value="92"/><column index="3" value="85"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="vendor_inventory" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="85"/><column index="2" value="55"/><column index="3" value="66"/><column index="4" value="71"/><column index="5" value="85"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">/* ASSIGNMENT 2 */

/* SECTION 2 */

-- NAME: FAIYZA ALAM

-- COALESCE

/* 1. Our favourite manager wants a detailed long list of products, but is afraid of tables! 

We tell them, no problem! We can produce a list with all of the appropriate details. 



Using the following syntax you create our super cool and not at all needy manager a list:



SELECT 

product_name || ', ' || product_size|| ' (' || product_qty_type || ')'

FROM product



But wait! The product table has some bad data (a few NULL values). 

Find the NULLs and then using COALESCE, replace the NULL with a 

blank for the first problem, and 'unit' for the second problem. 



HINT: keep the syntax the same, but edited the correct components with the string. 

The `||` values concatenate the columns into strings. 

Edit the appropriate columns -- you're making two edits -- and the NULL rows will be fixed. 

All the other rows will remain the same.) */



SELECT 

product_name || 

', ' || 

COALESCE(product_size, '') || 

-- I considered coalesce(NULLIF(product_size,''),'')

-- But this would make a blank null, then blank again, which seems redundant

' (' || 

COALESCE(product_qty_type, 'unit') || 

-- There are no blanks in this table, so I don't need to do any nullif statements

-- This would take the nulls in the given column and replaces it with &quot;unit&quot;

')' AS product_list

FROM product;





--Windowed Functions

/* 1. Write a query that selects from the customer_purchases table and numbers each customer’s  

visits to the farmer’s market (labeling each market date with a different number). 

Each customer’s first visit is labeled 1, second visit is labeled 2, etc. 



You can either display all rows in the customer_purchases table, with the counter changing on

each new market date for each customer, or select only the unique market dates per customer 

(without purchase details) and number those visits. 

HINT: One of these approaches uses ROW_NUMBER() and one uses DENSE_RANK(). */





SELECT 

customer_id,

market_date,

ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY market_date) as visit_rank



FROM (SELECT DISTINCT 

		customer_id,

		market_date

		FROM customer_purchases

		)

-- I believe I did the second option, i.e. I selected only the unique market 

-- dates per customer (without purchase details) and numbered those visits 





/* 2. Reverse the numbering of the query from a part so each customer’s most recent visit is labeled 1, 

then write another query that uses this one as a subquery (or temp table) and filters the results to 

only the customer’s most recent visit. */



SELECT *

FROM(

	SELECT 

	customer_id,

	market_date,

	ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY market_date DESC) as visit_rank



	FROM (

			SELECT DISTINCT 

			customer_id,

			market_date

			FROM customer_purchases

		)

)

WHERE visit_rank=1





/* 3. Using a COUNT() window function, include a value along with each row of the 

customer_purchases table that indicates how many different times that customer has purchased that product_id. */



SELECT *, COUNT() OVER(PARTITION BY customer_id, product_id ORDER BY customer_id) as number_purchased

FROM customer_purchases





/* This is what I originally wrote:



SELECT *, COUNT(product_id) AS number_purchased

FROM customer_purchases

GROUP BY customer_id, product_id



I couldn't wrap my head around why the columns reduced from 400+ to 200 ish. 

But then I realized I used the group by function, instead of doing a window function like the question asked

I have since fixed. This code was a good sanity check though, helped me confirm the other one

*/

   





-- String manipulations

/* 1. Some product names in the product table have descriptions like &quot;Jar&quot; or &quot;Organic&quot;. 

These are separated from the product name with a hyphen. 

Create a column using SUBSTR (and a couple of other commands) that captures these, but is otherwise NULL. 

Remove any trailing or leading whitespaces. Don't just use a case statement for each product! 



| product_name               | description |

|----------------------------|-------------|

| Habanero Peppers - Organic | Organic     |



Hint: you might need to use INSTR(product_name,'-') to find the hyphens. INSTR will help split the column. */



SELECT product_id, 

product_name,

CASE WHEN INSTR(product_name, '-') = 0

	 THEN NULL

	 ELSE

	 SUBSTR(product_name,INSTR(product_name, '-')+2)  -- I added this +2 because I didn't want the dash and space in

	 END AS 'description',

product_size,

product_category_id,

product_qty_type

FROM product





/* 2. Filter the query to show any product_size value that contain a number with REGEXP. */



SELECT product_id, 

product_name,

CASE WHEN INSTR(product_name, '-') = 0

	 THEN NULL

	 ELSE

	 SUBSTR(product_name,INSTR(product_name, '-')+2)  -- I added this +2 because I didn't want the dash and space in

	 END AS 'description',

product_size,

product_category_id,

product_qty_type

FROM product

WHERE product_size REGEXP '[0-9]' 



-- UNION

/* 1. Using a UNION, write a query that displays the market dates with the highest and lowest total sales.



HINT: There are a possibly a few ways to do this query, but if you're struggling, try the following: 

1) Create a CTE/Temp Table to find sales values grouped dates; 

2) Create another CTE/Temp table with a rank windowed function on the previous query to create 

&quot;best day&quot; and &quot;worst day&quot;; 

3) Query the second temp table twice, once for the best day, once for the worst day, 

with a UNION binding them. */

DROP TABLE IF EXISTS daily_sales;

CREATE TEMP TABLE daily_sales AS

SELECT market_date, SUM(total_cost_per_customer_per_day) AS total_sales_per_day

FROM(

	SELECT *, SUM(quantity*cost_to_customer_per_qty) AS total_cost_per_customer_per_day

	FROM customer_purchases

	GROUP BY customer_id, market_date)

GROUP BY market_date



DROP TABLE IF EXISTS best_worst;

CREATE TEMP TABLE best_worst AS

SELECT market_date, total_sales_per_day, sales_rank,

CASE WHEN sales_rank = 1 THEN 'worst'

WHEN sales_rank = 142 THEN 'best'

END AS 'best_worst_rank'

FROM( 

SELECT *,

ROW_NUMBER() OVER(ORDER BY total_sales_per_day) as sales_rank

FROM daily_sales

);

SELECT * FROM best_worst





SELECT market_date, total_sales_per_day, best_worst_rank 

FROM best_worst

WHERE best_worst_rank = 'worst' OR best_worst_rank = 'best'



-- Uh....I appear to have done this without a union....so here's a union version:



SELECT market_date, total_sales_per_day, best_worst_rank 

FROM best_worst

WHERE best_worst_rank = 'best' 

UNION 

SELECT market_date, total_sales_per_day, best_worst_rank 

FROM best_worst

WHERE best_worst_rank = 'worst' 



-- How should this have been done? I don't like that I 'hard coded' in the lowest rank



/* SECTION 3 */



-- Cross Join

/*1. Suppose every vendor in the `vendor_inventory` table had 5 of each of their products to sell to **every** 

customer on record. How much money would each vendor make per product? 

Show this by vendor_name and product name, rather than using the IDs.



HINT: Be sure you select only relevant columns and rows. 

Remember, CROSS JOIN will explode your table rows, so CROSS JOIN should likely be a subquery. 

Think a bit about the row counts: how many distinct vendors, product names are there (x)?



THERE ARE 3 VENDORS IN THE VENDOR INVENTORY TABLE (but 9 vendors total)



vendor 7 has 4 distinct products

vendor 8 has 3

vendor 9 has 1 

I should have 208 rows...



How many customers are there (y). 

26 customers from CUSTOMER 



Before your final group by you should have the product of those two queries (x*y).  */



DROP TABLE IF EXISTS profit_per_vendor_per_product;

CREATE TEMP TABLE profit_per_vendor_per_product AS

SELECT *, SUM(total_cost_per_customer) AS total_profit_per_product

FROM(

SELECT *, 5*original_price AS total_cost_per_customer

FROM(

SELECT DISTINCT

    vendor_id,

	original_price,

    product_id,

    customer_id

FROM

    vendor_inventory

CROSS JOIN

    customer))

GROUP BY product_id;



SELECT vendor_name, product_name, total_profit_per_product FROM profit_per_vendor_per_product

INNER JOIN vendor

ON profit_per_vendor_per_product.vendor_id = vendor.vendor_id

INNER JOIN product

ON profit_per_vendor_per_product.product_id = product.product_id



-- This one was the hardest for me...I ended up using a temp table





-- INSERT

/*1.  Create a new table &quot;product_units&quot;. 

This table will contain only products where the `product_qty_type = 'unit'`. 

It should use all of the columns from the product table, as well as a new column for the `CURRENT_TIMESTAMP`.  

Name the timestamp column `snapshot_timestamp`. */



DROP TABLE IF EXISTS product_units;

CREATE TEMP TABLE product_units AS

SELECT *, CURRENT_TIMESTAMP AS snapshot_timestamp

FROM product

WHERE product_qty_type = 'unit';





/*2. Using `INSERT`, add a new row to the product_units table (with an updated timestamp). 

This can be any product you desire (e.g. add another record for Apple Pie). */



INSERT INTO product_units (product_id,

product_name, product_size, product_category_id, product_qty_type, snapshot_timestamp)

VALUES (7, 'Apple Pie', '12&quot;', 3, 'unit', CURRENT_TIMESTAMP);

SELECT * FROM product_units;



-- DELETE

/* 1. Delete the older record for the whatever product you added. 

HINT: If you don't specify a WHERE clause, you are going to have a bad time.*/



DELETE FROM product_units

--SELECT * FROM product_units

WHERE product_name = 'Apple Pie'

AND

-- oldest entry

snapshot_timestamp = 

(SELECT snapshot_timestamp FROM product_units 

WHERE product_name = 'Apple Pie'

ORDER BY snapshot_timestamp ASC

LIMIT 1); 

-- Is there a way to do this without a subquery? This is the only thing I could come up with...

-- It seems a little bit brute force to me though

SELECT * FROM product_units



-- UPDATE

/* 1.We want to add the current_quantity to the product_units table. 

First, add a new column, current_quantity to the table using the following syntax.



ALTER TABLE product_units

ADD current_quantity INT;



Then, using UPDATE, change the current_quantity equal to the last quantity value from the vendor_inventory details.



HINT: This one is pretty hard. 

First, determine how to get the &quot;last&quot; quantity per product. 

Second, coalesce null values to 0 (if you don't have null values, figure out how to rearrange your query so you do.) 

Third, SET current_quantity = (...your select statement...), remembering that WHERE can only accommodate one column. 

Finally, make sure you have a WHERE statement to update the right row, 

	you'll need to use product_units.product_id to refer to the correct row within the product_units table. 

When you have all of these components, you can run the update statement. */



ALTER TABLE product_units

ADD current_quantity INT;



SELECT * FROM product_units

INNER JOIN vendor_inventory

ON product_units.product_id = vendor_inventory.product_id





-- GET MOST RECENT QUANTITY FROM vendor_inventory

DROP TABLE IF EXISTS recent_qty;

CREATE TEMP TABLE recent_qty AS

SELECT product_id, quantity AS current_quantity FROM(

SELECT product_id, quantity, MAX(market_date) AS most_recent

FROM vendor_inventory

GROUP BY product_id)





-- UPDATE THAT QUANTITY. IF NULL, REPLACE WITH 0

UPDATE product_units

SET current_quantity = COALESCE((

    SELECT current_quantity

    FROM recent_qty

    WHERE recent_qty.product_id = product_units.product_id

), 0);



SELECT * FROM product_units

</sql><current_tab id="0"/></tab_sql></sqlb_project>

