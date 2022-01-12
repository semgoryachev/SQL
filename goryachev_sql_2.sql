create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name) 
		values ('Гарри Поттер');
	
insert into employees(employee_name) 
		values ('Рон Уизли'),
		('Гермиона Грейнджер'),
		('Минерва Макгонагл'),
		('Северус Снейп'),
		('Альбус Дамблдор'),
		('Дадли Дурсль'),
		('Мистер Дурсль'),
		('Миссис Дурсль'),
		('Хагрид'),
		('Оливер Вуд'),
		('Волдеморт'),
		('Мадам Помфри'),
		('Джинни Уизли'),
		('Джоан Роулинг'),
		('Аберфорд Дамблдор'),	
		('Букля'),
		('Короста'),
		('Лили Поттер'),
		('Джеймс Поттер'),
		('Сириус Блэк'),
		('Аластор Грюм'),
		('Невилл Долгопупс'),
		('Билл Уизли'),
		('Чарли Уизли'),
		('Джордж Уизли'),
		('Фред Уизли'),
		('Виктор Крам'),
		('Лаванда Браун'),
		('Парвати Патил'),
		('Римус Люпин'),
		('Алисия Спиннет'),
		('Анджелина Джонсон'),
		('Кэти Белл'),
		('Колин Криви'),
		('Дин Томас'),
		('Драко Малфой'),
		('Винсент Крэбб'),
		('Грегори Гойл'),
		('Падма Патил'),
		('Полумна Лавгуд'),
		('Симус Финниган'),
		('Ханна Аббот'),
		('Чжоу Чанг'),
		('Аргус Филч'),
		('Добби свободный эльф'),
		('Винки'),
		('Полтергейст Пивз'),
		('Кровавый барон'),
		('Полная дама'),
		('Профессор Стебль'),
		('Сивилла Трелони'),
		('Флитвик'),
		('Почти безголовый Ник'),
		('Беллатриса Лестрейнж'),
		('Люциус Малфой'),
		('Питер Петтигрю'),
		('Стэн Шампайк'),
		('Кингсли Бруствер'),
		('Дедалус Дингл'),
		('Молли Уизли'),
		('Артур Уизли'),
		('Наземникус'),
		('Нимфадора Тонкс'),
		('Долорес Амбридж'),
		('Перси Уизли'),
		('Пий Толстоватый'),
		('Кикимер'),
		('Мадам Максим'),
		('Рита Скитер');
		
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary(monthly_salary) 
	values (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);
			
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null);

select * from employee_salary;

insert into employee_salary(employee_id, salary_id)
	values (1, 3),
			(2, 14),
			(3, 13),
			(4, 7),
			(5, 9),
			(6, 10),
			(7, 15),
			(8, 5),
			(9, 2),
			(10, 1),
			(11, 13),
			(12, 6),
			(13, 8),
			(14, 4),
			(15, 2),
			(16, 7),
			(17, 11),
			(18, 16),
			(19, 14),
			(20, 3),
			(21, 10),
			(22, 11),
			(23, 8),
			(24, 1),
			(25, 6),
			(26, 5),
			(27, 7),
			(28, 6),
			(29, 12),
			(30, 14),
			(73, 8),
			(82, 9),
			(95, 13),
			(102, 1),
			(79, 9),
			(88, 7),
			(124, 5),
			(215, 3),
			(90, 10),
			(92, 5);
			
create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

alter table roles alter column role_name type varchar(30);

insert into roles(role_name) 
	values ('Junior Python developer'),
			('Middle Python developer'),
			('Senior Python developer'),
			('Junior Java developer'),
			('Middle Java developer'),
			('Senior Java developer'),
			('Junior JavaScript developer'),
			('Middle JavaScript developer'),
			('Senior JavaScript developer'),
			('Junior Manual QA engineer'),
			('Middle Manual QA engineer'),
			('Senior Manual QA engineer'),
			('Project Manager'),
			('Designer'),
			('HR'),
			('CEO'),
			('Sales manager'),
			('Junior Automation QA engineer'),
			('Middle Automation QA engineer'),
			('Senior Automation QA engineer');
		
--update roles set role_name='Senior Automation QA engineer' where id = 20;

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id), 
	foreign key (role_id) 
		references roles(id)
);

select * from roles_employee;

insert into roles_employee(employee_id, role_id) 
	values (15, 20),
			(51, 19),
			(22, 18),
			(38, 17),
			(54, 16),
			(66, 11),
			(11, 10),
			(48, 12),
			(4, 13),
			(61, 14),
			(1, 15),
			(12, 20),
			(2, 9),
			(14, 8),
			(49, 7),
			(36, 6),
			(69, 5),
			(33, 4),
			(27, 3),
			(19, 11),
			(24, 12),
			(47, 2),
			(53, 13),
			(67, 14),
			(63, 13),
			(7, 9),
			(57, 2),
			(3, 6),
			(8, 7),
			(10, 2),
			(17, 3),
			(13, 1),
			(32, 17),
			(60, 18),
			(56, 14),
			(28, 11),
			(43, 10),
			(46, 1),
			(23, 6),
			(18, 4);