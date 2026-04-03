{%- set tabletype ='orderstable' -%} 

select
orderid,
'{{tabletype}}' as tablesource
from {{ ref('stg_orders') }}