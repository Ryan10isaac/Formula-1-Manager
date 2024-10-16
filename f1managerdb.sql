CREATE TABLE users ( 
    uid int not null auto_increment primary key, 
    username  VARCHAR(255) NOT NULL unique, 
    uemail varchar(255) not null unique,
    uPassword INT NOT NULL );

CREATE TABLE manager (
    mid INT NOT NULL AUTO_INCREMENT , 
    mname VARCHAR(255) NOT NULL , 
    uid INT NOT NULL unique, 
    PRIMARY KEY (mid),
    foreign key(uid) references users(uid)on delete cascade);


create table club(
    clubid int primary key auto_increment,
    clubname varchar(60) not null,
    clubformation varchar(10) not null,
    mid int not null unique, 
    foreign key(mid) references manager(mid) on delete cascade);

create table player(
    pid int primary key auto_increment,
    pname varchar(255),
    position varchar(10),
    country varchar(255),
    rating varchar(10),
    image varchar(255)
);


create table clubformation(
    clubid int primary key,
    soft int ,
    medium int ,
    inter int ,
    wet int ,
    sub1 int ,
    sub2 int ,
    foreign key(clubid) references club(clubid) on delete cascade,
    foreign key(soft) references player(pid) on delete cascade,
    foreign key(medium) references player(pid) on delete cascade,
    foreign key(inter) references player(pid) on delete cascade,
    foreign key(wet) references player(pid) on delete cascade,
    foreign key(sub1) references player(pid) on delete cascade,
    foreign key(sub2) references player(pid) on delete cascade
    );
