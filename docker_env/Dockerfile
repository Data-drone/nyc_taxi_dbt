FROM python:3.8.10-buster

## presteps as per https://docs.getdbt.com/dbt-cli/installation

RUN apt-get install -y git libpq-dev && \
    pip install --upgrade cffi && \
    pip install cryptography~=3.4

RUN pip install dbt