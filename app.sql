
create table user (
 	id_user int auto_increment,
 	email varchar(40) not null,
 	password varchar(20) not null,
 	primary key(id_user)
);
 

select * from user;


insert into user
(email, password)
values
("gabriel@gmal.com","1234"),
("roberto@gmail.com","24680"),
("wireless@gmail.com","08642"),
("marquinhos_da_petrobas@gmail.com","97531"),
("show234@gmail.com","369246");


create table post (
	id_post int auto_increment, 
	title varchar(20), 
	description text,
	id_user int,
	primary key(id_post),
	foreign key(id_user) references user(id_user)
);

select * from roles;


insert into post 
(title, description, id_user)
values

("Lorem","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 1),
("Lorem ","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 1),

("Lorem","asdawudasduagwdunasfawyasbydawdasdawdasdawdasdawdawdawd", 2),
("Games","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 2),

("Lorem","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 3),
("L"," Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 3),

("Lorem ","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 4),
("Animes","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 4),

("Lorem","NLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 5),
("HTML","SLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 5);

select * from post;


create table roles (
	id_role int auto_increment,
	primary key(id_role),
	acess varchar(16) not null
);


insert into roles 
(acess)
values
("Admin"),
("Employe"),
("Client");


create table user_roles (
	id_user int,
	id_roles int,
	foreign key(id_user) references user(id_user),
	foreign key(id_roles) references roles(id_role)
);

select * from user_roles;


insert into user_roles 
(id_user, id_roles)
values
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3),
(5, 2),
(3, 3);

delete from post
	where id_user = 2;

delete from user_roles
	where id_user = 2;
	
delete from user
	where id_user = 2;

update post
	set title = 'escola',
	description ='A escola esta me deixando muito mal e estressado'
	where id_post = 1
	limit 1;

select 
post.id_post, 
post.title, 
post.description, 
post.id_user, 
user.id_user from post inner join user
on post.id_user = user.id_user
where user.id_user = 3;

select 
post.id_post, 
post.title, 
post.description, 
post.id_user, 
user.id_user from post inner join user
on post.id_user = user.id_user
where user.id_user = 5;
	

select 
user.id_user,  
roles.acess from user_roles 
join user on user_roles.id_user = user.id_user 
join roles on roles.id_role = user_roles.id_roles 
where roles.acess = "Admin";


