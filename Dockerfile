FROM postgres:10.4

RUN apt-get update
RUN apt-get install postgresql-contrib -y

RUN echo "CREATE EXTENSION IF NOT EXISTS pg_trgm" > /docker-entrypoint-initdb.d/create_pg_trm_extension.sql