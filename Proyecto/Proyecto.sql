CREATE DATABASE Proyecto;

USE Proyecto;

CREATE TABLE Farmacias(
	id_Farmacia nchar(5) Primary key not null,
	fecha_inicioPromo date null,
	fecha_finPromo date null,
	porcentaje_descuento real null 
);

insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-30 19:04:19', '2022-03-30 12:05:22', 0.85, 'F3292');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-29 07:14:59', '2022-03-25 16:58:53', 0.97, 'F2501');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-12 22:30:01', '2022-02-26 00:03:58', 0.79, 'F0795');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-03 11:34:53', '2022-03-12 03:15:24', 0.75, 'F2469');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-04 22:03:44', '2022-03-13 13:18:14', 0.05, 'F1537');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-03 19:07:40', '2022-02-19 22:57:52', 0.46, 'F2858');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-25 12:34:16', '2022-03-27 04:12:25', 0.21, 'F5165');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-02 15:16:23', '2022-02-09 18:10:47', 0.88, 'F3200');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-01 21:22:16', '2022-02-14 04:46:20', 0.46, 'F0698');
insert into Farmacias (fecha_inicioPromo, fecha_finpromo, porcentaje_descuento, id_Farmacia) values ('2022-01-02 21:04:13', '2022-03-30 08:18:45', 0.33, 'F6659');

SELECT * FROM Farmacias;



CREATE TABLE Farmacia_Cliente(
	id_Farmacia_Cliente int primary key not null,
	id_Farmacia nchar(5),
	id_Cliente int
);
ALTER TABLE Farmacia_Cliente add constraint FK_Farmacia_Cliente_Farmacia foreign key (id_Farmacia) references Farmacias(id_Farmacia);
ALTER TABLE Farmacia_Cliente add constraint FK_Farmacia_Cliente_Cliente foreign key (id_Cliente) references Clientes(id_Cliente);

insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(1, 'F3292', 1)   
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(2, 'F2501', 2)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(3, 'F0795', 3)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(4, 'F2469', 4)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(5, 'F3292', 5)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(6, 'F1537', 6)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(7, 'F3200', 7)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(8, 'F0698', 8)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(9, 'F0698', 9)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(10, 'F6659', 10)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(11, 'F3292', 11)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(12, 'F3292', 12)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(13, 'F3292', 13)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(14, 'F2501', 14)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(15, 'F3292', 15)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(16, 'F2501', 16)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(17, 'F0795', 17)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(18, 'F3292', 18)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(19, 'F0795', 19)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(20, 'F5165', 20)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(21, 'F5165', 21)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(22, 'F5165', 22)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(23, 'F5165', 23)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(24, 'F0698', 24)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(25, 'F3292', 25)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(26, 'F0698', 26)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(27, 'F0698', 27)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(28, 'F3200', 28)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(29, 'F3200', 29)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(30, 'F3292', 30)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(31, 'F3200', 31)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(32, 'F3292', 32)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(33, 'F1537', 33)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(34, 'F1537', 34)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(35, 'F1537', 35)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(36, 'F6659', 36)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(37, 'F6659', 37)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(38, 'F6659', 38)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(39, 'F5165', 39)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(40, 'F5165', 40)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(41, 'F2501', 41)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(42, 'F2501', 42)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(43, 'F3292', 43)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(44, 'F0698', 44)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(45, 'F2469', 45)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(46, 'F3292', 46)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(47, 'F6659', 47)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(48, 'F6659', 48)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(49, 'F0795', 49)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(50, 'F3292', 50)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(51, 'F3292', 2)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(52, 'F3292', 3)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(53, 'F2501', 4)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(54, 'F0795', 7)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(55, 'F3292', 8)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(56, 'F0795', 9)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(57, 'F5165', 2)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(58, 'F5165', 1)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(59, 'F5165', 25)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(60, 'F5165', 23)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(61, 'F0698', 4)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(62, 'F3292', 5)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(63, 'F0698', 6)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(64, 'F0698', 27)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(65, 'F3200', 28)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(66, 'F3200', 19)
insert into Farmacia_Cliente(id_Farmacia_Cliente, id_Farmacia, id_Cliente) VALUES(67, 'F3292', 10)

SELECT * FROM Farmacia_Cliente

CREATE TABLE Clientes(
	id_Cliente int primary key not null,
	nombre varchar(30) not null,
	colonia  varchar(15) not null,
	bloque varchar(5) null,
	calle varchar(10) null,
	numero_casa int null,
	descripción_casa varchar(60) null,
	telefono_celular  varchar(15) not null,
	telefono_fijo varchar(15) null,
	fecha_nacimiento date not null,
	correo varchar(50) not null,
	contraseña varchar(21) not null,
	usuario varchar(15) not null,
);


insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (1, 'Milton', 'Dottie', '4', '4', 25, '31 Mariners Cove Lane', '806 485 9096', '125-531-0679', '1988-05-30 19:07:54', 'mlalley0@51.la', 'r5ORbZ', 'mbarthelet0');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (2, 'Anderea', 'Farwell', '0', null, null, '2537 Fair Oaks Trail', '464 356 6790', '847-303-6740', '1982-12-17 02:38:41', 'aiannazzi1@yale.edu', '3wtwRp12UBS2', 'acaveney1');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (3, 'Rosa', 'Elka', '7', null, null, '6172 Norway Maple Plaza', '493 217 3290', '470-816-2105', '1995-12-31 16:49:48', 'rmurtell2@accuweather.com', 'uEpD2XOiXSb7', 'rmougeot2');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (4, 'Wenda', 'Morning', null, null, null, null, '231 682 3376', '423-842-9846', '1987-08-24 14:59:16', 'wmanners3@japanpost.jp', '3wbJPIpe0', 'wwallworke3');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (5, 'Federica', 'Manley', '88', '2', 36, null, '804 147 6985', '320-535-1115', '1960-01-19 17:19:31', 'flouw4@bigcartel.com', 'Qdl1gVd9yl', 'fchatten4');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (6, 'Quincey', 'Chinook', '8', '43701', 49, '0 Anthes Center', '167 129 4964', '614-695-0458', '1978-12-14 17:49:30', 'qstraniero5@furl.net', 'Vf3YlFTIhSzi', 'qeyre5');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (7, 'Zorah', 'Redwing', '4233', '222', 8, '249 Merrick Circle', '171 444 7557', '731-154-1956', '1976-07-13 10:36:05', 'zjauncey6@bloglines.com', 'aaqJceBabS', 'zjerson6');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (8, 'Lyndell', 'Claremont', '05099', '5', 49, '197 Holy Cross Avenue', '757 378 8682', '365-374-0428', '1995-10-13 12:13:15', 'lglynne7@fastcompany.com', 'ES0RBun', 'lsawfoot7');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (9, 'Wilone', 'Golf Course', '8451', '77', 48, '4516 Kinsman Place', '740 844 2408', '867-521-3029', '1993-08-22 14:23:34', 'wplan8@networksolutions.com', 'ZwUw5da', 'wgaskoin8');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (10, 'Emlyn', 'International', '443', '1', 91, '62 Forest Run Plaza', '889 750 1447', '659-531-7630', '1960-11-03 17:22:15', 'eexcell9@altervista.org', 'OMRZ1D1V', 'eedison9');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (11, 'Fan', 'Milwaukee', '8174', '4', 50, '1 Troy Hill', '199 254 1844', null, '1970-10-01 21:01:11', 'fjocica@bbc.co.uk', 'aq4WkC', 'fmacmenemya');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (12, 'Selina', 'Mayer', '77380', '65210', 16, null, '983 564 1114', '169-736-0458', '1994-03-11 02:11:51', 'sblanningb@pagesperso-orange.fr', 'dAr53rVPqzG', 'shickenb');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (13, 'Retha', 'Logan', '1900', '83289', 39, '5350 Cody Drive', '736 972 1957', '424-422-9166', '1979-02-16 23:37:09', 'rlepinec@blogs.com', 'w2vvTt', 'rmuatc');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (14, 'Constantina', 'Evergreen', '107', '4267', 24, null, '357 158 8155', '624-566-6841', '1978-03-16 15:40:06', 'cmeekd@miitbeian.gov.cn', 'f0MJRme7hgMg', 'ctownsendd');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (15, 'Heinrik', 'Blaine', null, '4', 3, '6 Aberg Circle', '710 527 0108', '728-537-3088', '1972-10-13 17:02:24', 'hrodgiere@digg.com', '7PaBwlfzjK', 'hpoore');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (16, 'Vevay', 'Vera', '8', '051', 13, null, '187 573 2835', null, '1980-03-24 13:27:51', 'valexisf@census.gov', 'eQga2wo', 'vcairneyf');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (17, 'Ursa', 'Crest Line', '8', '874', 24, '83 Hintze Trail', '379 279 9884', '832-486-3985', '1970-09-28 22:03:23', 'ulabuschagneg@a8.net', 'oazG010qkE', 'ufazang');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (18, 'Orelie', 'Darwin', '4245', '0355', 40, '012 Independence Alley', '498 584 9595', null, '1986-05-22 16:05:28', 'odhoogheh@paypal.com', 'GiGLQVaDnW', 'olemmenh');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (19, 'Levon', 'Onsgard', '53398', '83', 31, '88333 Kim Parkway', '752 477 5512', null, '1974-09-17 07:31:48', 'lastlei@pcworld.com', 'petpYv8', 'lbrigmani');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (20, 'Erwin', 'Amoth', '8982', '34', 2, '59 American Ash Street', '807 127 4886', '939-362-7381', '1960-01-24 11:30:29', 'emeanwellj@bloglovin.com', 'krJEfe6K3', 'eseeryj');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (21, 'Candi', 'Pennsylvania', '6448', '8', 34, null, '273 608 4068', '383-485-3870', '1960-03-08 23:49:33', 'casmank@hud.gov', 'X25Tld', 'cbahlk');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (22, 'Chickie', 'Kings', '5290', '2301', 5, '7 4th Way', '652 494 7560', '423-266-6766', '1970-09-18 16:05:14', 'cpickfordl@scribd.com', 'r6K6fOdQ', 'crobinettl');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (23, 'Artemus', 'Almo', '7951', '6255', 50, '6343 Kings Junction', '378 416 9007', '523-846-6888', '1965-04-17 23:20:33', 'apetersenm@ebay.co.uk', 'Xj1vjTcSYI', 'adevaneym');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (24, 'Kerry', 'Northwestern', '55', '64', 61, '9 Charing Cross Hill', '935 280 8363', '965-153-9574', '1995-02-27 04:41:49', 'kjoiscen@fastcompany.com', 'wVueIDOwrT2', 'kkeninghamn');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (25, 'Raffarty', 'Forest Dale', '52730', null, null, '5327 Tennessee Junction', '775 351 0394', '656-142-6477', '1979-10-01 15:25:57', 'rfarriaro@people.com.cn', 'ccl3wjOG3Mx', 'rbarkshireo');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (26, 'Merrily', 'Dwight', '3206', '2', 75, '8313 Brown Trail', '948 409 9129', '924-739-5534', '1984-05-23 22:08:57', 'mduckerinp@un.org', 'SD9NkVrykI', 'mclimerp');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (27, 'Nikaniki', 'Larry', null, '1552', 65, '275 Elka Circle', '330 696 9103', '340-596-8608', '1974-01-04 05:34:48', 'nteglerq@myspace.com', 'u3fJNklN', 'nfeaksq');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (28, 'Emmalynn', 'Tomscot', '23328', '635', 10, '4817 Holmberg Avenue', '741 771 3083', '413-645-0617', '1995-09-02 20:34:57', 'egreenalfr@zdnet.com', 'hm5wKNrLKi', 'efullerlover');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (29, 'Nobie', 'Sheridan', '08', '78448', 78, '9011 Miller Terrace', '637 195 5764', null, '1963-05-04 04:55:20', 'nseages@indiatimes.com', 'WoP8lp', 'nhuccabys');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (30, 'Jeffie', 'Holmberg', '38769', null, null, '5 Rigney Parkway', '928 202 6292', '906-965-6372', '1992-02-23 18:49:12', 'jboxellt@about.me', 'SSsVofcnJp', 'jmacfallt');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (31, 'Diahann', 'Paget', null, '65', 98, null, '588 718 7301', null, '1960-03-30 12:19:56', 'djedrzejewskyu@europa.eu', 'hVvuh9', 'ddiblingu');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (32, 'Mariana', 'Jana', '814', '55', 2, '84 Northridge Road', '991 498 8126', null, '1972-02-08 21:36:29', 'mmowlingv@imgur.com', 'MrQGJvw6YQzi', 'mdybbev');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (33, 'Mercy', 'Mesta', '50', '237', 7, null, '597 734 0068', '564-820-1631', '1986-02-26 10:53:29', 'mantrumw@biblegateway.com', 'ljf1tX1', 'mpothecaryw');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (34, 'Mair', 'Little Fleur', '09', null, null, '4192 Veith Court', '991 486 0095', '777-253-1116', '1972-01-14 17:42:41', 'mtidbaldx@blogspot.com', 'jFMT8ct', 'mgoselingx');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (35, 'Dwain', 'Waywood', '54', '75822', 9, '247 6th Trail', '505 863 2640', null, '1984-09-08 04:54:16', 'dsoday@fastcompany.com', '8hvImTq', 'dskully');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (36, 'Tabbie', 'Burning Wood', '34882', '91458', 8, '25 Anzinger Terrace', '827 332 6617', null, '1967-01-17 03:49:36', 'tjurekz@bbc.co.uk', 'zKRIWBCwV', 'trihanekz');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (37, 'Sharline', 'Pawling', '0', '6', 54, '59630 Michigan Hill', '971 921 3521', '147-353-6496', '1980-10-02 04:44:57', 'scroasdale10@vinaora.com', 'iC2HZKuF', 'sfalconar10');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (38, 'Lloyd', 'Northland', '379', '08', 26, '797 Springs Hill', '470 519 0749', '290-929-9631', '1967-12-12 11:40:48', 'ldossantos11@blogger.com', 'CaWC4KYc', 'lrizzardini11');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (39, 'Tedi', 'Northridge', '6681', null, null, '0251 Corben Terrace', '103 210 2319', '161-853-1736', '1967-01-18 11:10:10', 'tmaccaghan12@blogs.com', 'rj4WRvW', 'tsamet12');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (40, 'Rafi', 'Shoshone', '30986', '20', 74, '37 Dakota Place', '132 351 0647', '669-844-5688', '1981-03-05 03:47:19', 'rpioli13@nba.com', 'lIGIqFG9a', 'rferraraccio13');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (41, 'Danielle', 'Walton', '5', '3', 2, '24 Roxbury Point', '801 858 5593', '276-700-0566', '1978-07-07 11:03:14', 'dgresham14@intel.com', 'KXnpyGKi', 'dkingswoode14');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (42, 'Ode', 'Monument', '17578', '47', 36, '98755 Warrior Avenue', '903 534 2287', '964-914-1314', '1991-12-07 01:35:29', 'oleopold15@xinhuanet.com', 'XClNyruBE', 'olerner15');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (43, 'Sue', 'Toban', '4', '3', 38, '67551 2nd Plaza', '410 388 2986', '681-138-9277', '1976-05-23 16:41:31', 'ssultan16@people.com.cn', 'V8tmFIz', 'spfeffer16');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (44, 'Maria', 'Reinke', '5', '01', 24, null, '128 655 7982', '728-464-5501', '1966-08-30 03:28:49', 'mkimbrey17@linkedin.com', 'TuzQVT', 'mbeldan17');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (45, 'Hall', 'Ruskin', '2', '75885', 23, '3 Swallow Road', '272 334 7159', null, '1993-04-06 02:33:49', 'hpace18@gravatar.com', '9nvnlFcawYK', 'hcabrales18');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (46, 'Aggy', 'Lindbergh', '32', '69047', 7, '78 Valley Edge Crossing', '492 931 3672', null, '1996-04-05 04:18:05', 'avasnetsov19@psu.edu', 'hcxB43Dx', 'adobbie19');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (47, 'Tulley', 'Rusk', null, '6402', 77, '7321 Tennessee Crossing', '773 708 4476', null, '1983-12-16 11:00:06', 'tbrocket1a@nsw.gov.au', 'JPkkP5z', 'ttukely1a');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (48, 'Tobit', 'Bartelt', '28', '78', 68, '8815 Dunning Terrace', '487 948 2527', '445-253-3288', '1993-12-10 00:28:33', 'tkencott1b@google.es', 'qgKMh68D', 'tsifleet1b');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (49, 'Tadd', 'Crownhardt', '4', '5948', 81, '81 Eastwood Trail', '255 195 3498', '470-998-8685', '1997-10-01 23:07:06', 'tgrumell1c@marriott.com', 'YXgwGLq', 'tmarkos1c');
insert into Clientes (id_Cliente, nombre, colonia, bloque, calle, numero_casa, descripción_casa, telefono_celular, telefono_fijo, fecha_nacimiento, correo, contraseña, usuario) values (50, 'Addi', 'Welch', '75066', null, null, '2075 4th Circle', '188 221 2596', '780-979-0518', '1970-07-11 17:25:13', 'atresvina1d@ox.ac.uk', 'V1LNQi4yGAMM', 'alashley1d');
Select * from Clientes


CREATE TABLE Categoria(
	id_Categoria nchar(5) primary key not null,
	nombre_Categoria varchar(25)
);

INSERT INTO Categoria (id_Categoria, nombre_Categoria) VALUES ('101', 'Medicamentos')
INSERT INTO Categoria (id_Categoria, nombre_Categoria) VALUES ('201', 'Cuidado Personal')
INSERT INTO Categoria (id_Categoria, nombre_Categoria) VALUES ('301', 'Electronicos')
INSERT INTO Categoria (id_Categoria, nombre_Categoria) VALUES ('401', 'Lentes')
INSERT INTO Categoria (id_Categoria, nombre_Categoria) VALUES ('501', 'Abarroteria')

CREATE TABLE Productos(
	Id_Producto int PRIMARY KEY NOT NULL,
	Nombre_Producto varchar(60) NOT NULL,
	Precio_compra money NOT NULL,
	Precio_venta money NOT NULL,
	Descripción  varchar(60) NULL,
	Fotografía image NULL,
	id_Categoria nchar(5) FOREIGN KEY REFERENCES Categoria(id_Categoria)
);



insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (1, 'SODIUM LACTATE', 554.04, 915.94, 'Dextrose in Lactated Ringers', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (2, 'Hydrochloride', 227.35, 667.6, 'Hydrochloride', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (3, 'Trospium Chloride', 898.19, 190.93, 'Trospium Chloride', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (4, 'CETIRIZINE', 262.42, 589.64, 'Cetrizine', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (5, 'FAMOTIDINE', 678.68, 394.38, 'FAMOTIDINE', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (6, 'Guaifenesin', 948.42, 864.32, 'Good Neighbor Pharmacy mucus er', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (7, 'Bethanechol Chloride', 943.64, 840.95, 'Bethanechol Chloride', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (8, 'Acetaminophen', 266.82, 693.59, '7 select night time relief', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (9, 'Aspirin', 904.19, 539.99, 'Leader Aspirin', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (10, 'Carboplatin', 248.53, 602.99, 'Carboplatin', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (11, 'OXYGEN', 736.26, 351.86, 'OXYGEN', null,'101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (12, 'Clotrimazole', 634.93, 873.48, 'Clotrimazole', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (13, 'Diltiazem', 247.88, 82.67, 'Doxylamine succinate', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (14, 'Octinoxate', 701.85, 828.3, 'Oxybenzone', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (15, 'Simethicone', 27.85, 739.02, 'Gas Relief', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (16, 'AMINOBUTYRIC ACID', 149.03, 399.12, 'Therafeldamine', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (17, 'nabumetone', 970.97, 512.89, 'Nabumetone', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (18, 'Clotrimazole', 645.0, 326.48, 'CVS', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (19, 'potassium chloride', 570.4, 129.7, 'sodium bicarbonate and potassium chloride', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (20, 'Cephalexin', 856.37, 758.41, 'Cephalexin', null, '101');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (21, 'Jabón facial', 213.7, 446.86, 'Apotheca Company', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (22, 'Jabón corporal', 212.46, 473.08, 'Dr. Reddy''s Laboratories Inc', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (23, 'desodorante', 448.25, 257.36, 'Alembic Pharmaceuticals Limited', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (24, 'Shampoo', 292.04, 29.23, 'Publix Super Markets Inc', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (25, 'Acondicionador', 234.64, 191.97, 'Rebel Distributors Corp', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (26, 'Enjuague bucal', 218.83, 88.98, 'Sandoz Inc', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (27, 'Talco', 333.4, 181.11, 'Wal-Mart Stores Inc', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (28, 'Brillo labial', 65.51, 47.12, 'Watson Laboratories, Inc.', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (29, 'Toallitas húmedas', 371.82, 423.85, 'Proficient Rx LP', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (30, 'Protector solar', 241.41, 528.22, 'The Hain Celestial Group, Inc.', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (31, 'Demaquillante', 254.69, 351.74, 'Roxane Laboratories, Inc', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (32, 'Quitaesmalte', 124.83, 223.63, 'Actavis Elizabeth LLC', null, '201');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (33, 'Termometro Digital' , 460.31, 576.47, 'Ventura Corporation Ltd. (San Juan, P.R)', null, '301');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (34, 'Audifonos', 461.43, 323.89, 'Taro Pharmaceuticals U.S.A., Inc.', null, '301');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (35, 'Tensiómetros', 112.06, 450.91, 'Bonne Bell LLC', null, '301');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (36, 'Humidificadores', 100.25, 314.85, 'Contract Pharmacy Services-PA', null, '301');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (37, 'Lentes', 400.12, 900.94, 'Major Pharmaceuticals', null, '401');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (38, 'Formula', 266.85, 580.28, 'Wakefern Food Corporation', null, '501');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (39, 'Leche en polvo', 200.52, 532.71, 'Natural Health Supply', null, '501');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (40, 'Alimento para bebe', 223.51, 500.2, 'MAKE UP ART COSMETICS', null, '501');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (41, 'Chocolates', 20.04, 40.41, 'American Health Packaging', null, '501');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (42, 'Gomas de mascar', 3.2, 8.1, 'Nelco Laboratories, Inc.', null, '501');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (43, 'Galletas', 15.99, 26.2, 'Teva Select Brands', null, '501');
insert into Productos (id_producto, nombre_producto, precio_compra, precio_venta, descripción, fotografía, id_Categoria) values (44, 'Paletas', 10.17, 18.99, 'Merle Norman', null, '501');


SELECT * FROM Clientes

CREATE TABLE Compras(
	id_Compra nchar(4),
	fecha_compra  date,
	cantidad_producto int,
	Id_Producto int FOREIGN KEY REFERENCES Productos(Id_Producto),
	id_Cliente int FOREIGN KEY REFERENCES Clientes(id_Cliente)
	on delete cascade
);

insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#aa4', '5/22/2021', 2, 1, 1);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#aa4', '5/22/2021', 1, 2, 1);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#204', '5/22/2021', 2, 24, 2);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#7ec', '10/18/2021', 2, 24, 3);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#88e', '12/24/2021', 1, 38, 4);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#24b', '8/19/2021', 5, 40, 5);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#d0a', '2/17/2021', 3, 41, 6);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#9a1', '6/23/2021', 1, 42, 7);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#9a1', '6/23/2021', 3, 42, 7);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#70e', '3/17/2021', 1, 21, 8);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#70e', '3/17/2021', 1, 26, 8);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#70e', '3/17/2021', 1, 30, 8);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#8a8', '12/26/2021', 2, 43, 9);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#703', '7/25/2021', 5, 9, 10);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#703', '7/25/2021', 6, 8, 10);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#965', '3/5/2021', 3, 8, 11);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#139', '7/2/2021', 4, 8, 12);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#139', '7/2/2021', 2, 9, 12);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#139', '7/2/2021', 1, 31, 12);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#602', '10/28/2021', 3, 27, 13);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#602', '10/28/2021', 5, 28, 13);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#602', '10/28/2021', 3, 29, 13);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#602', '10/28/2021', 3, 13, 13);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b6a', '9/30/2021', 2, 38, 14);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b6a', '9/30/2021', 2, 41, 14);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b6a', '9/30/2021', 2, 42, 14);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b6a', '9/30/2021', 2, 43, 14);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b9e', '8/20/2021', 5, 13, 15);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b85', '6/2/2021', 1, 19, 16);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#e6d', '5/31/2021', 1, 33, 17);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#e6d', '5/31/2021', 1, 34, 17);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#870', '2/9/2021', 1, 18, 18);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#1be', '6/21/2021', 4, 44, 19);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#a8b', '7/24/2021', 5, 9, 20);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#a8b', '7/24/2021', 1, 23, 20);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#a8b', '7/24/2021', 2, 32, 20);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#cf6', '12/20/2021', 3, 22, 21);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#a13', '6/23/2021', 2, 22, 22);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#a13', '6/23/2021', 2, 14, 22);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#0de', '6/10/2021', 6, 25, 23);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#142', '11/4/2021', 2, 34, 24);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#142', '11/4/2021', 1, 36, 24);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#6b6', '10/16/2021', 1, 37, 25);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#7fd', '7/24/2021', 2, 8, 26);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#142', '11/4/2021', 4, 23, 24);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#5bb', '4/30/2021', 27, 27, 27);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#453', '4/15/2021', 2, 20, 28);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#453', '4/15/2021', 1, 26, 28);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#94c', '3/24/2021', 2, 18, 29);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#94c', '3/24/2021', 1, 19, 29);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#726', '4/18/2021', 3, 17, 30);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#ab5', '4/26/2021', 1, 38, 31);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#ab5', '4/26/2021', 1, 39, 31);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#ab5', '4/26/2021', 4, 8, 31);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b59', '11/26/2021', 6, 15, 32);
insert into Compras (id_Compra, fecha_compra, cantidad_producto, Id_Producto, id_Cliente) values ('#b59', '11/26/2021', 1, 21, 32);

SELECT * FROM COMPRAS


CREATE TABLE Inventario(
	id_Inventario  int Primary key not null,
	cantidad int,
	id_Farmacia nchar(5) FOREIGN KEY REFERENCES Farmacias(id_Farmacia),
	Id_Producto int FOREIGN KEY REFERENCES Productos(Id_Producto)
)

insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (1, 10, 'F3292', 1);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (2, 3, 'F3292', 2);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (3, 17, 'F3292', 3);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (4, 39, 'F3292', 4);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (5, 24, 'F3292', 5);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (6, 22, 'F3292', 6);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (7, 30, 'F3292', 7);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (8, 38, 'F3292', 8);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (9, 17, 'F3292', 9);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (10, 22, 'F3292', 10);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (11, 25, 'F3292', 11);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (12, 44, 'F3292', 12);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (13, 31, 'F3292', 13);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (14, 22, 'F3292', 14);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (15, 1, 'F3292', 15);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (16, 50, 'F3292', 16);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (17, 43, 'F3292', 17);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (18, 13, 'F3292', 18);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (19, 50, 'F3292', 19);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (20, 1, 'F3292', 20);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (21, 49, 'F3292', 21);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (22, 39, 'F3292', 22);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (23, 19, 'F3292', 23);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (24, 36, 'F3292', 24);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (25, 27, 'F3292', 25);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (26, 49, 'F3292', 26);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (27, 36, 'F3292', 27);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (28, 4, 'F3292', 28);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (29, 18, 'F3292', 29);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (30, 24, 'F3292', 30);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (31, 1, 'F3292', 31);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (32, 31, 'F3292', 32);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (33, 41, 'F3292', 33);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (34, 11, 'F3292', 34);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (35, 1, 'F3292', 35);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (36, 48, 'F3292', 36);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (37, 35, 'F3292', 37);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (38, 34, 'F3292', 38);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (39, 41, 'F3292', 39);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (40, 50, 'F3292', 40);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (41, 2, 'F3292', 41);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (42, 11, 'F3292', 42);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (43, 19, 'F3292', 43);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (44, 47, 'F3292', 44);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (45, 12, 'F2501', 1);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (46, 14, 'F2501', 2);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (47, 44, 'F2501', 3);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (48, 27, 'F2501', 4);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (49, 47, 'F2501', 5);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (50, 27, 'F2501', 6);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (51, 46, 'F2501', 7);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (52, 45, 'F2501', 8);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (53, 20, 'F2501', 9);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (54, 22, 'F2501', 10);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (55, 10, 'F2501', 11);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (56, 10, 'F2501', 12);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (57, 18, 'F2501', 13);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (58, 21, 'F2501', 14);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (59, 4, 'F2501', 15);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (60, 29, 'F2501', 16);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (61, 43, 'F2501', 17);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (62, 29, 'F2501', 18);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (63, 21, 'F2501', 19);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (64, 27, 'F2501', 20);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (65, 27, 'F2501', 21);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (66, 31, 'F2501', 22);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (67, 8, 'F2501', 23);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (68, 48, 'F2501', 24);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (69, 43, 'F2501', 25);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (70, 12, 'F2501', 26);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (71, 9, 'F2501', 27);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (72, 14, 'F2501', 28);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (73, 17, 'F2501', 29);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (74, 29, 'F2501', 30);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (75, 4, 'F2501', 31);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (76, 6, 'F2501', 32);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (77, 30, 'F2501', 33);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (78, 18, 'F2501', 34);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (79, 18, 'F2501', 35);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (80, 26, 'F2501', 36);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (81, 17, 'F2501', 37);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (82, 28, 'F2501', 38);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (83, 32, 'F2501', 39);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (84, 3, 'F2501', 40);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (85, 4, 'F2501', 41);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (86, 34, 'F2501', 42);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (87, 1, 'F2501', 43);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (88, 37, 'F2501', 44);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (89, 38, 'F0795', 1);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (90, 42, 'F0795', 2);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (91, 37, 'F0795', 3);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (92, 32, 'F0795', 4);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (93, 33, 'F0795', 5);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (94, 34, 'F0795', 6);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (95, 14, 'F0795', 7);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (96, 6, 'F0795', 8);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (97, 27, 'F0795', 9);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (98, 42, 'F0795', 10);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (99, 22, 'F0795', 11);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (100, 27, 'F0795', 12);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (101, 15, 'F0795', 13);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (102, 9, 'F0795', 14);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (103, 18, 'F0795', 15);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (104, 41, 'F0795', 16);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (105, 18, 'F0795', 17);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (106, 34, 'F0795', 18);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (107, 10, 'F0795', 19);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (108, 12, 'F0795', 20);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (109, 38, 'F0795', 21);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (110, 10, 'F0795', 22);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (111, 28, 'F0795', 23);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (112, 16, 'F0795', 24);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (113, 29, 'F0795', 25);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (114, 22, 'F0795', 26);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (115, 30, 'F0795', 27);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (116, 28, 'F0795', 28);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (117, 18, 'F0795', 29);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (118, 42, 'F0795', 30);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (119, 11, 'F0795', 31);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (120, 47, 'F0795', 32);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (121, 32, 'F0795', 33);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (122, 33, 'F0795', 34);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (123, 22, 'F0795', 35);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (124, 13, 'F0795', 36);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (125, 9, 'F0795', 37);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (126, 43, 'F0795', 38);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (127, 20, 'F0795', 39);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (128, 42, 'F0795', 40);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (129, 3, 'F0795', 41);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (130, 48, 'F0795', 42);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (131, 16, 'F0795', 43);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (132, 16, 'F0795', 44);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (133, 32, 'F3200', 1);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (134, 21, 'F3200', 2);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (135, 19, 'F3200', 3);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (136, 15, 'F3200', 4);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (137, 32, 'F3200', 5);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (138, 4, 'F3200', 6);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (139, 46, 'F3200', 7);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (140, 12, 'F3200', 8);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (141, 35, 'F3200', 9);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (142, 1, 'F3200', 10);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (143, 33, 'F3200', 11);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (144, 45, 'F3200', 12);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (145, 11, 'F3200', 13);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (146, 20, 'F3200', 14);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (147, 36, 'F3200', 15);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (148, 39, 'F3200', 16);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (149, 47, 'F3200', 17);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (150, 1, 'F3200', 18);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (151, 16, 'F3200', 19);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (152, 13, 'F3200', 20);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (153, 45, 'F3200', 21);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (154, 12, 'F3200', 22);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (155, 11, 'F3200', 23);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (156, 48, 'F3200', 24);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (157, 45, 'F3200', 25);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (158, 44, 'F3200', 26);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (159, 50, 'F3200', 27);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (160, 49, 'F3200', 28);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (161, 31, 'F3200', 29);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (162, 15, 'F3200', 30);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (163, 3, 'F3200', 31);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (164, 30, 'F3200', 32);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (165, 2, 'F3200', 33);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (166, 10, 'F3200', 34);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (167, 35, 'F3200', 35);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (168, 27, 'F3200', 36);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (169, 26, 'F3200', 37);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (170, 46, 'F3200', 38);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (171, 15, 'F3200', 39);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (172, 34, 'F3200', 40);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (173, 26, 'F3200', 41);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (174, 11, 'F3200', 42);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (175, 47, 'F3200', 43);
insert into Inventario (id_Inventario , cantidad, id_Farmacia, Id_Producto) values (176, 40, 'F3200', 44);


SELECT * FROM Inventario