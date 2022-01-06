# Derived from official mysql image (our base image)
FROM mysql

# Add a database

ENV MYSQL_DATABASE pucsdStudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
COPY test.sql /docker-entrypoint-initdb.d

EXPOSE 3306
