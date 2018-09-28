 create table message (
 id integer not null auto_increment,
  data datetime,
   filename varchar(255),
    tag varchar(255) not null,
     text varchar(255),
      user_id integer,
       primary key (id)) engine=MyISAM;

 create table user_role (
 user_id integer not null,
  roles varchar(255)) engine=MyISAM;

 create table usr (
 id integer not null auto_increment,
  active bit not null,
   password varchar(255) not null,
    username varchar(255) not null,
     primary key (id)) engine=MyISAM;

 alter table message add constraint message_user_fk
  foreign key (user_id) references usr (id);

 alter table user_role add constraint user_role_user_fk
 foreign key (user_id) references usr (id);