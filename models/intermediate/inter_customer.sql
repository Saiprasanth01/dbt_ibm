
select * from customers c
join orders o 
on c.c_custkey=o.o_custkey
join nations n
on c.c_nationkey=n.n_nationkey
join regions r
on r.r_regionkey=n.n_regionkey;