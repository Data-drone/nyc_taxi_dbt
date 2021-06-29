select
    to_date(pickup_datetime) as `date`,
    count(*) as `num_trips`  
from processed.nyc_taxi_dataset
group by to_date(pickup_datetime)