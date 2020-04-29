FROM mdillon/postgis:11

COPY tsearch_data/* /usr/share/postgresql/11/tsearch_data/

COPY initdb.sql /docker-entrypoint-initdb.d/Z99_initdb.sql
