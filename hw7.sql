use `goit-rdb-hw-03`;

-- 1
select
    id,
    date,
    year(date) as year,
    month(date) as month,
    day(date) as day
from
    orders;

-- 2
select
    id,
    date,
    date_add(date, interval 1 day) as date_plus_one
from
    orders;

-- 3
select
    id,
    date,
    unix_timestamp(date) as timestamp
from
    orders;

-- 4
select
    count(*)
from
    orders
where
    date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';

-- 5
select
    id,
    date,
    json_object('id', id, 'date', date) as json_data
from
    orders;
