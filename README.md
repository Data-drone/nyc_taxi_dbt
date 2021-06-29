# NYC Taxi testing with dbt

dbt has become quite a popular data modelling / ETL orchestration tool for sql transforms.

I will take a some nyc taxi data up to 2015 and run some dbt transforms on it

## Notes

Docker file has been written with the expectation that `docker build` be run from within the docker_env folder
This was built with my ml_platform stack in mind:

- https://github.com/Data-drone/a_ml_platform.git


#### Startup a container into the ml_platform network

```bash

# mount the dbt_project folder for interactive testing
docker run -it -v "$(pwd)"/dbt_project:/dbt_project --network ml_platform dbt_test:latest /bin/bash 

```