select * from {{source('src','customers')}}
where c_acctbal>5000