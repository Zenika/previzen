/*
* Init script intended to insert data in the AGENCY TABLE in the PostgresSQL docker container.
* It'll be run in the docker-compose.yml (volumes: - ./sql/init:/docker-entrypoint-initdb.d)
*/

insert into AGENCY (name_agency, city_agency, country_agency) values ('Lille', 'LILLE', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Paris', 'PARIS', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Nantes', 'NANTES', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Bordeaux', 'BORDEAUX', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Grenoble', 'GRENOBLE', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Rennes', 'RENNES', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Brest', 'BREST', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Lyon', 'LYON', 'France');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Singapore', 'SINGAPORE', 'Singapore');
insert into AGENCY (name_agency, city_agency, country_agency) values ('Montréal', 'MONTRÉAL', 'Canada');
