drop database if exists edashboard;
create database edashboard;
use edashboard;

create table distretto(
	ID integer unsigned not null primary key auto_increment,
	nome varchar(20) not null
);

create table edificio(
	ID integer unsigned not null primary key auto_increment,
	nome varchar(20) not null,
    IDdistretto integer unsigned not null,
	constraint id_distretto foreign key(IDdistretto) references distretto(ID) on update cascade on delete cascade

);

create table gestore(
	ID integer unsigned not null primary key auto_increment,
	nome varchar(20) not null,
    cognome varchar(100) not null,
    pw varchar(25) unique not null,
    email varchar(100) not null,
    tipo varchar(30) not null,
    IDedificio integer unsigned default null,
    IDdistretto integer unsigned default null,
	foreign key(IDedificio) references edificio(ID) on update cascade on delete cascade,
	foreign key(IDdistretto) references distretto(ID) on update cascade 

);

create table area(
	ID integer unsigned not null primary key auto_increment,
	tipo varchar(20) not null,
	IDedificio integer unsigned not null,
    constraint id_edificio foreign key(IDedificio) references edificio(ID) on update cascade on delete cascade    
);

create table amministratore(
	ID integer unsigned not null primary key auto_increment,
	nome varchar(20) not null,
    cognome varchar(100) not null,
    pw varchar(25) unique not null,
    email varchar(100) not null
);

create table sensore(
	ID integer unsigned primary key auto_increment,
	frequenza float not null,
    tipo varchar(40) not null,
    lower_bound float not null,
    upper_bound float not null,
    IDarea integer unsigned not null,
    constraint id_area foreign key(IDarea) references area(ID) on update cascade on delete cascade    
);

create table segnale(
	ID integer unsigned primary key auto_increment,
	valore integer not null,
    data_s timestamp not null,
    IDsensore integer unsigned not null,
    constraint id_sensore foreign key(IDsensore) references sensore(ID) on update cascade on delete cascade    
);

create table modifica_soglia(
	ID integer unsigned primary key auto_increment,
	data_m timestamp not null,
    IDgestore integer unsigned not null,
    IDsensore integer unsigned not null,
	foreign key(IDsensore) references sensore(ID) on update cascade on delete cascade,    
    foreign key(IDgestore) references gestore(ID) on update cascade on delete cascade    
);