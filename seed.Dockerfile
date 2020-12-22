FROM mysql:5.7.26

COPY ./assets/config/database/schema.sql /tmp/
CMD sleep 15 && mysql -h mysqldocker -u root -D searchcode < /tmp/schema.sql
