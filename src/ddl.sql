Pets example notes


CREATE TABLE pets.owners (
    ownerid varchar,
    name varchar,
    surname varchar,
    streetaddress varchar,
    city varchar,
    state varchar(2),
    statefull varchar,
    zipcode varchar
);


CREATE TABLE proceduredetails (
    proceduretype varchar,
    proceduresubcode varchar,
    description varchar,
    price float
);


CREATE TABLE procedurehistory (
    petid varchar,
    proceduredate date,
    proceduretype varchar,
    proceduresubcode varchar
);

psql -U postgres -h localhost -p 5432 -d postgres -t  -A -c "COPY pets.owners FROM '/opt/data/petsdata/P9-Owners.csv' DELIMITER ',' CSV HEADER;"

psql -U postgres -h localhost -p 5432 -d postgres -t  -A -c "COPY pets.proceduredetails FROM '/opt/data/petsdata/P9-ProceduresDetails.csv' DELIMITER ',' CSV HEADER;"

psql -U postgres -h localhost -p 5432 -d postgres -t  -A -c "COPY pets.procedurehistory FROM '/opt/data/petsdata/P9-ProceduresHistory.csv' DELIMITER ',' CSV HEADER;"
