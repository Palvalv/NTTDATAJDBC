------------------------------------------------------
-- AUTOR       : NTTDATA CENTERS - SEVILLA
-- DESCRIPCIÓN : JAVA - JDBC - MYSQL - EJEMPLO
-- RESPONSABLE : JUAN ALEJANDRO TÉLLEZ RUBIO
------------------------------------------------------

-- Eliminación de esquema.
DROP SCHEMA nttdata_jdbc_ex;

-- Creación de esquema.
CREATE SCHEMA nttdata_jdbc_ex DEFAULT CHARACTER SET utf8;

-- Uso de esquema.
USE nttdata_jdbc_ex;

-- Creación de tabla para personas.
CREATE TABLE nttdata_mysql_soccer_team (
	
	id_soccer_team INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(35),
	stadium VARCHAR(40),
	stadium_capacity INT,
	first_color VARCHAR(10),
	second_color VARCHAR(10),
	third_color VARCHAR(10),
	city VARCHAR(15),
	division INT,
	num_national_trophies INT,
	num_international_trophies INT,
	
	PRIMARY KEY(id_soccer_team)
);

-- Creación de tabla para personas.
CREATE TABLE nttdata_mysql_soccer_player (
	
	id_soccer_player INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(35),
	birth_date DATE,
	first_rol VARCHAR(20),
	second_rol VARCHAR(20),
	id_soccer_team INT,
	
	PRIMARY KEY(id_soccer_player),
	FOREIGN KEY(id_soccer_team) REFERENCES nttdata_mysql_soccer_team(id_soccer_team)
);

-- Añadido de equipos.
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Sevilla Fútbol Club", "Ramón Sánchez-Pizjuán", 47074, "Blanco", "Rojo", "Negro", "Sevilla", 1, 7, 6);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Real Betis Balompié", "Benito Villamarín", 67584, "Blanco", "Verde", "Gris", "Sevilla", 1, 3, 0);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Granada Club de Fútbol", "Nuevo Los Cármenes", 19336, "Rojo", "Azul", "Blanco", "Granada", 1, 0, 0);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Cádiz Club de Fútbol", "Ramón de Carranza", 20724, "Amarillo", "Azul", "Negro", "Cádiz", 1, 0, 0);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Málaga Club de Fútbol", "La Rosaleda", 30044, "Blanco", "Azul", "Morado", "Málaga", 2, 0, 1);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Real Club Recreativo de Huelva", "Nuevo Colombino", 21670, "Blanco", "Azul", "Naranja", "Huelva", 4, 0, 0);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Unión Deportiva Almería", "Estadio de los Juegos Mediterráneos", 15274, "Rojo", "Blanco", "Negro", "Almería", 2, 0, 0);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Real Jaén Club de Fútbol", "La Victoria", 15569, "Blanco", "Morado", "Verde", "Jaén", 4, 0, 0);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Xerez Club Deportivo", "Estadio de La Juventud", 2000, "Azul", "Blanco", "Rojo", "Cádiz", 5, 0, 0);
INSERT INTO nttdata_mysql_soccer_team (name, stadium, stadium_capacity, first_color, second_color, third_color, city, division, num_national_trophies, num_international_trophies) 
VALUES ("Córdoba Club de Fútbol", "El Arcángel", 21822, "Blanco", "Verde", "Rojo", "Córdoba", 4, 0, 0);

-- Añadido de futbolistas.
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Jesús Navas", '1985-11-21', "LAT-D", "EXT-D", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Sevilla Fútbol Club"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Jules Koundé", '1998-11-12', "CEN-D", "LAT-D", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Sevilla Fútbol Club"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Youssef En-Nesyri", '1997-06-01', "DEL", "EXT-I", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Sevilla Fútbol Club"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Joaquín Sánchez", '1981-07-21', "EXT-D", "DEL", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Real Betis Balompié"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Sergio Canales", '1991-02-16', "MEC", "PIV", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Real Betis Balompié"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Nabil Fekir", '1993-07-18', "MEP", "EXT-D", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Real Betis Balompié"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Genaro", '1998-03-23', "MEC", "CEN", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Málaga Club de Fútbol"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Jairo Samperio", '1993-07-11', "MEP", "EXT-D", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Málaga Club de Fútbol"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol, id_soccer_team) 
VALUES ("Antoñin", '2000-04-16', "DEL", "EXT", (SELECT id_soccer_team FROM nttdata_mysql_soccer_team WHERE name = "Málaga Club de Fútbol"));
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol) 
VALUES ("Portu", '1992-05-01', "DEL", "MEP");
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol) 
VALUES ("Carlos Fdz.", '1996-05-24', "DEL", "MEP");
INSERT INTO nttdata_mysql_soccer_player (name, birth_date, first_rol, second_rol) 
VALUES ("Illarramendi", '1990-03-31', "MEC", "PIV");