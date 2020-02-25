/* 
* Init script intended to insert data in the AGENCY TABLE in the PostgresSQL docker container.
* It'll be run in the docker-compose.yml (volumes: - ./sql/init:/docker-entrypoint-initdb.d)
*/

insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (1, 'Lille', 'LILLE', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (2, 'Paris', 'PARIS', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (3, 'Nantes', 'NANTES', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (4, 'Bordeaux', 'BORDEAUX', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (5, 'Grenoble', 'GRENOBLE', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (6, 'Rennes', 'RENNES', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (7, 'Brest', 'BREST', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (8, 'Lyon', 'LYON', 'France');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (9, 'Singapore', 'SINGAPORE', 'Singapore');
insert into AGENCY (id_agency, name_agency, city_agency, country_agency) values (10, 'Montréal', 'MONTRÉAL', 'Canada');