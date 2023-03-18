create table pokemon (dex_number integer not null auto_increment, hps integer not null, attack integer not null, defense integer not null, sp_attack integer not null, sp_defense integer not null, species varchar(255) not null, speed integer not null, type_one varchar(255) not null, type_two varchar(255), id_team integer, primary key (dex_number)) engine=InnoDB;
create table team (team_id integer not null auto_increment, name varchar(12) not null, primary key (team_id)) engine=InnoDB;
alter table pokemon add constraint FK_team foreign key (id_team) references team (team_id);

insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("BULBASAUR","GRASS","POISON",45,49,49,65,65,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("IVYSAUR","GRASS","POISON",60,62,63,80,80,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VENUSAUR","GRASS","POISON",80,82,83,100,100,80,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CHARMANDER","FIRE",null,39,52,43,60,50,65,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CHARMELEON","FIRE",null,58,64,58,80,65,80,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CHARIZARD","FIRE","FLYING",78,84,78,109,85,100,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SQUIRTLE","WATER",null,44,48,65,50,64,43,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("WARTORTLE","WATER",null,59,63,80,65,80,58,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("BLASTOISE","WATER",null,79,83,100,85,105,78,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CATERPIE","BUG",null,45,30,35,20,20,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("METAPOD","BUG",null,50,20,55,25,25,30,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("BUTTERFREE","BUG","FLYING",60,45,50,90,80,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("WEEDLE","BUG",null,40,35,30,20,20,50,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KAKUNA","BUG",null,45,25,50,25,25,35,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("BEEDRILL","BUG","POISON",65,90,40,45,80,75,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PIDGEY","NORMAL","FLYING",40,45,40,35,35,56,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PIDGEOTTO","NORMAL","FLYING",63,60,55,50,50,71,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PIDGEOT","NORMAL","FLYING",83,80,75,70,70,101,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("RATTATA","NORMAL",null,30,56,35,25,35,72,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("RATICATE","NORMAL",null,55,81,60,50,70,97,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SPEAROW","NORMAL","FLYING",40,60,30,31,31,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("FEAROW","NORMAL","FLYING",65,90,65,61,61,100,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("EKANS","POISON",null,35,60,44,40,54,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ARBOK","POISON",null,60,95,69,65,79,80,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PIKACHU","ELECTRIC",null,35,55,40,50,50,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("RAICHU","ELECTRIC",null,60,90,55,90,80,110,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SANDSHREW","GROUND",null,50,75,85,20,30,40,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SANDSLASH","GROUND",null,75,100,110,45,55,65,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("NIDORAN_F","POISON",null,55,47,52,40,40,41,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("NIDORINA","POISON",null,70,62,67,55,55,56,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("NIDOQUEEN","POISON","GROUND",90,92,87,75,85,76,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("NIDORAN_M","POISON",null,46,57,40,40,40,50,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("NIDORINO","POISON",null,61,72,57,55,55,65,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("NIDOKING","POISON","GROUND",81,102,77,85,75,85,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CLEFAIRY","FAIRY",null,70,45,48,60,65,35,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CLEFABLE","FAIRY",null,95,70,73,95,90,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VULPIX","FIRE",null,38,41,40,50,65,65,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("NINETALES","FIRE",null,73,76,75,81,100,100,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("JIGGLYPUFF","NORMAL","FAIRY",115,45,20,45,25,20,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("WIGGLYTUFF","NORMAL","FAIRY",140,70,45,85,50,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ZUBAT","POISON","FLYING",40,45,35,30,40,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GOLBAT","POISON","FLYING",75,80,70,65,75,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ODDISH","GRASS","POISON",40,50,55,75,65,30,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GLOOM","GRASS","POISON",60,65,70,85,75,40,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VILEPLUME","GRASS","POISON",75,80,85,110,90,50,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PARAS","BUG","GRASS",35,70,55,45,55,25,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PARASECT","BUG","GRASS",60,95,80,60,80,30,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VENONAT","BUG","POISON",60,55,50,40,55,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VENOMOTH","BUG","POISON",70,65,60,90,75,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DIGLETT","GROUND",null,10,55,25,35,45,95,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DUGTRIO","GROUND",null,35,100,50,50,70,120,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MEOWTH","NORMAL",null,40,45,35,40,40,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PERSIAN","NORMAL",null,65,70,60,65,65,115,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PSYDUCK","WATER",null,50,52,48,65,50,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GOLDUCK","WATER",null,80,82,78,95,80,85,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MANKEY","FIGHTING",null,40,80,35,35,45,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PRIMEAPE","FIGHTING",null,65,105,60,60,70,95,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GROWLITHE","FIRE",null,55,70,45,70,50,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ARCANINE","FIRE",null,90,110,80,100,80,95,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("POLIWAG","WATER",null,40,50,40,40,40,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("POLIWHIRL","WATER",null,65,65,65,50,50,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("POLIWRATH","WATER","FIGHTING",90,95,95,70,90,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ABRA","PSYCHIC",null,25,20,15,105,55,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KADABRA","PSYCHIC",null,40,35,30,120,70,105,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ALAKAZAM","PSYCHIC",null,55,50,45,135,95,120,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MACHOP","FIGHTING",null,70,80,50,35,35,35,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MACHOKE","FIGHTING",null,80,100,70,50,60,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MACHAMP","FIGHTING",null,90,130,80,65,85,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("BELLSPROUT","GRASS","POISON",50,75,35,70,30,40,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("WEEPINBELL","GRASS","POISON",65,90,50,85,45,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VICTREEBEL","GRASS","POISON",80,105,65,100,70,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("TENTACOOL","WATER","POISON",40,40,35,50,100,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("TENTACRUEL","WATER","POISON",80,70,65,80,120,100,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GEODUDE","ROCK","GROUND",40,80,100,30,30,20,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GRAVELER","ROCK","GROUND",55,95,115,45,45,35,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GOLEM","ROCK","GROUND",80,120,130,55,65,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PONYTA","FIRE",null,50,85,55,65,65,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("RAPIDASH","FIRE",null,65,100,70,80,80,105,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SLOWPOKE","WATER","PSYCHIC",90,65,65,40,40,15,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SLOWBRO","WATER","PSYCHIC",95,75,110,100,80,30,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MAGNEMITE","STEEL","ELECTRIC",25,35,70,95,55,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MAGNETON","STEEL","ELECTRIC",50,60,95,120,70,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("FARFETCH_D","NORMAL","FLYING",52,90,55,58,62,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DODUO","NORMAL","FLYING",35,85,45,35,35,75,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DODRIO","NORMAL","FLYING",60,110,70,60,60,110,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SEEL","WATER",null,65,45,55,45,70,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DEWGONG","WATER","ICE",90,70,80,70,95,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GRIMER","POISON",null,80,80,50,40,50,25,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MUK","POISON",null,105,105,75,65,100,50,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SHELLDER","WATER",null,30,65,100,45,25,40,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CLOYSTER","WATER","ICE",50,95,180,85,45,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GASTLY","GHOST","POISON",30,35,30,100,35,80,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("HAUNTER","GHOST","POISON",45,50,45,115,55,95,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GENGAR","GHOST","POISON",60,65,60,130,75,110,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ONIX","ROCK","GROUND",35,45,160,30,45,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DROWZEE","PSYCHIC",null,60,48,45,43,90,42,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("HYPNO","PSYCHIC",null,85,73,70,73,115,67,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KRABBY","WATER",null,30,105,90,25,25,50,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KINGLER","WATER",null,55,130,115,50,50,75,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VOLTORB","ELECTRIC",null,40,30,50,55,55,100,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ELECTRODE","ELECTRIC",null,60,50,70,80,80,150,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("EXEGGCUTE","GRASS","PSYCHIC",60,40,80,60,45,40,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("EXEGGUTOR","GRASS","PSYCHIC",95,95,85,125,75,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CUBONE","GROUND",null,50,50,95,40,50,35,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MAROWAK","GROUND",null,60,80,110,50,80,45,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("HITMONLEE","FIGHTING",null,50,120,53,35,110,87,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("HITMONCHAN","FIGHTING",null,50,105,79,35,110,76,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("LICKITUNG","NORMAL",null,90,55,75,60,75,30,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KOFFING","POISON",null,40,65,95,60,45,35,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("WEEZING","POISON",null,65,90,120,85,70,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("RHYHORN","GROUND","ROCK",80,85,95,30,30,25,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("RHYDON","GROUND","ROCK",105,130,120,45,45,40,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("CHANSEY","NORMAL",null,250,5,5,35,105,50,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("TANGELA","GRASS",null,65,55,115,100,40,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KANGASKHAN","NORMAL",null,105,95,80,40,80,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("HORSEA","WATER",null,30,40,70,70,25,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SEADRA","WATER",null,55,65,95,95,45,85,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GOLDEEN","WATER",null,45,67,60,35,50,63,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SEAKING","WATER",null,80,92,65,65,80,68,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("STARYU","WATER",null,30,45,55,70,55,85,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("STARMIE","WATER","PSYCHIC",60,75,85,100,85,115,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MR_MIME","PSYCHIC",null,40,45,65,100,120,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SCYTHER","BUG","FLYING",70,110,80,55,80,105,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("JYNX","PSYCHIC","ICE",65,50,35,115,95,95,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ELECTABUZZ","ELECTRIC",null,65,83,57,95,85,105,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MAGMAR","FIRE",null,65,95,57,100,85,93,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PINSIR","BUG",null,65,125,100,55,70,85,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("TAUROS","NORMAL",null,75,100,95,40,70,110,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MAGIKARP","WATER",null,20,10,55,15,20,80,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("GYARADOS","WATER","FLYING",95,125,79,60,100,81,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("LAPRAS","WATER","ICE",130,85,80,85,95,60,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DITTO","NORMAL",null,48,48,48,48,48,48,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("EEVEE","NORMAL",null,55,55,50,45,65,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("VAPOREON","WATER",null,130,65,60,110,95,65,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("JOLTEON","ELECTRIC",null,65,65,60,110,95,130,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("FLAREON","FIRE",null,65,130,60,95,110,65,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("PORYGON","NORMAL",null,65,60,70,85,75,40,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("OMANYTE","ROCK","WATER",35,40,100,90,55,35,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("OMASTAR","ROCK","WATER",70,60,125,115,70,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KABUTO","ROCK","WATER",30,80,90,55,45,55,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("KABUTOPS","ROCK","WATER",60,115,105,65,70,80,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("AERODACTYL","ROCK","FLYING",80,105,65,60,75,130,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("SNORLAX","NORMAL",null,160,110,65,65,110,30,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ARTICUNO","FLYING","ICE",90,85,100,95,125,85,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("ZAPDOS","FLYING","ELECTRIC",90,90,85,125,90,100,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MOLTRES","FLYING","FIRE",90,100,90,125,85,90,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DRATINI","DRAGON",null,41,64,45,50,50,50,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DRAGONAIR","DRAGON",null,61,84,65,70,70,70,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("DRAGONITE","DRAGON","FLYING",91,134,95,100,100,80,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MEWTWO","PSYCHIC",null,106,110,90,154,90,130,null);
insert into pokemon (species,type_one,type_two,hps,attack,defense,sp_attack,sp_defense,speed,id_team) values ("MEW","PSYCHIC",null,100,100,100,100,100,100,null);