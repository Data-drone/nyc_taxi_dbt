FROM python:3.8.10-buster

## presteps as per https://docs.getdbt.com/dbt-cli/installation

# added xdg-utils as it is recommended by some dbt commands
RUN apt-get install -y git libpq-dev && \
    pip install --upgrade cffi && \
    pip install cryptography~=3.4 && \
    apt-get install -y xdg-utils

RUN pip install dbt

## These are needed for PyHive
RUN apt-get update && \
    apt-get install -y netcat && \
    apt-get install -y vim libsasl2-dev libsasl2-modules

RUN pip install "dbt-spark[PyHive]"

COPY profiles.yml ~/.dbt/profiles.yml