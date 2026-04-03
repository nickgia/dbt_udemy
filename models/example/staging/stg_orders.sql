<<<<<<< HEAD
{{
    config(
        materialized='table'
    )
}}

select 
--from raw orders 
o.orderid,
o.orderdate,
o.shipmode,
o.ordersellingprice - ordercostprice as orderprofit,
o.ordercostprice,
o.ordersellingprice,
--from raw Customer 
=======
select 
--from raw orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercostprice as orderprofit,
o.ordersellingprice ,
o.ordercostprice,
--from raw customer
>>>>>>> 7918133eeb9be4a0cc1404775f28c1d260725123
c.customerid,
c.customername,
c.segment,
c.country,
<<<<<<< HEAD
--from raw product
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_order') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_product') }} as p
on o.productid= p.productid
=======
--from rwa product
p.productid,
p.productname,
p.category,
p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_product') }} as p
on o.productid =p.productid
>>>>>>> 7918133eeb9be4a0cc1404775f28c1d260725123
