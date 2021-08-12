# Write your MySQL query statement below
select
  (case when id = (select max(id) from seat) and mod(id, 2) <> 0 then id
        when mod(id, 2) = 0 then id-1
        else id+1 end) as `id`
  , student
from seat
order by id