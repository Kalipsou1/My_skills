-- 1. Создать таблицу employees (id. serial,  primary key, employee_name. Varchar(50), not null)
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
)

-- 2. Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values ('Akbar Church'),
		('Izabelle Franklin'),
		('Luther Munro'),
		('Ho Simmonds'),
		('Bea Jackson'),
		('Georgina Daugherty'),
		('Eren Little'),
		('Zachariah Dunlap'),
		('Ammara Holmes'),
		('Alfred Sykes'),
		('Amara Richard'),
		('Johanna Willis'),
		('Oliwier Boyd'),
		('Tiana Quinn'),
		('Kashif Sanderson'),
		('Latoya Dawe'),
		('Jiya Redmond'),
		('Mehmet Trejo'),
		('Mila Pacheco'),
		('Lexi Fry'),
		('Livia Hagan'),
		('Eliot Bond'),
		('Aayat Samuels'),
		('Bethany Lucas'),
		('Subhaan Acevedo'),
		('Ailsa Miles'),
		('Hadi Russell'),
		('Paloma Hampton'),
		('Joss Mcdougall'),
		('Skylar Shaffer'),
		('Alisa Coulson'),
		('Emer Mcconnell'),
		('Elisha Mcpherson'),
		('Carol Rossi'),
		('Joanna Phelps'),
		('Conrad Paine'),
		('Jarrod Guzman'),
		('Alexandria Anderson'),
		('Arsalan Morales'),
		('Lukas Henry'),
		('Benedict Paterson'),
		('Brendon Mcgill'),
		('Humayra Ibarra'),
		('Conal Howarth'),
		('Lily-Grace Sanders'),
		('Fenella Bray'),
		('Mia Palmer'),
		('Waleed Currie'),
		('Ceara Tierney'),
		('Keanu Santana'),
		('Harlow Wall'),
		('Lamar Blaese'),
		('Ana Monaghan'),
		('Samantha Matthews'),
		('Zaid Dunn'),
		('Dustin Battle'),
		('Kiyan Golden'),
		('Danica Witt'),
		('Cristina Wallace'),
		('Niko Whitney'),
		('Oliver Fraser'),
		('Khloe Bowden'),
		('Franky Choi'),
		('Siddharth Gilmore'),
		('Dan Mcculloch'),
		('Ali Morin'),
		('Courtnie Alexander'),
		('Ammarah Barry'),
		('Theo Montoya'),
		('Christine Emerson')
		
-- 3. Создать таблицу salary (id. Serial  primary key, monthly_salary. Int, not null)
create table salary (
	id serial primary key,
	monthly_salary int not null
)

-- 4. Наполнить таблицу salary 16 строками
insert into salary (monthly_salary)
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
		(2500)

-- 5. Создать таблицу employee_salary (id. Serial  primary key, employee_id. Int, not null, unique, salary_id. Int, not null)

create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
)

-- 6. Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 14),
		(17, 13),
		(18, 12),
		(19, 11),
		(20, 10),
		(21, 9),
		(22, 8),
		(23, 7),
		(24, 6),
		(25, 5),
		(26, 4),
		(27, 3),
		(28, 2),
		(29, 1),
		(30, 2),
		(71, 3),
		(72, 4),
		(73, 5),
		(74, 6),
		(75, 7),
		(76, 8),
		(77, 9),
		(78, 10),
		(79, 11),
		(80, 12)	
	
-- 7. Создать таблицу roles (id. Serial  primary key, role_name. int, not null, unique)
create table roles (
	id serial primary key,
	role_name int unique not null
)

-- 8. Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30)

-- 9. Наполнить таблицу roles 20 строками
insert into roles (role_name)
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
		('Senior Automation QA engineer')

-- 10. Создать таблицу roles_employee (id. Serial  primary key, employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id), role_id. Int, not null (внешний ключ для таблицы roles, поле id))
create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
)

-- 11. Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 14),
		(17, 13),
		(18, 12),
		(19, 11),
		(20, 10),
		(21, 9),
		(22, 8),
		(23, 7),
		(24, 6),
		(25, 5),
		(26, 4),
		(27, 3),
		(28, 2),
		(29, 1),
		(30, 2),
		(31, 3),
		(32, 4),
		(33, 5),
		(34, 6),
		(35, 7),
		(36, 8),
		(37, 9),
		(38, 10),
		(39, 11),
		(40, 12)