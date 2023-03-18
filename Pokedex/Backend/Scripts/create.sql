create table pokemon (dex_number integer not null auto_increment, hps integer not null, attack integer not null, defense integer not null, sp_attack integer not null, sp_defense integer not null, species varchar(255) not null, speed integer not null, type_one varchar(255) not null, type_two varchar(255), id_team integer, primary key (dex_number)) engine=InnoDB;
create table team (team_id integer not null auto_increment, name varchar(12) not null, primary key (team_id)) engine=InnoDB;
alter table pokemon add constraint FK_team foreign key (id_team) references team (team_id);
