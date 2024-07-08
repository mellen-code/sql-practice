select 
t1.customer_id,
-- cannot count NULL
count(t1.customer_id) as count_no_trans
from Visits t1
left join Transactions t2
on t1.visit_id = t2.visit_id
where t2.amount is NULL
-- If trying to count things and put them in 'buckets' (e.g. counting by customerID), must use GROUP BY to specify buckets:
GROUP BY t1.customer_id