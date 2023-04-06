:: Server version: 8.0.32 MySQL Community Server - GPL

@echo off
color 03
C:
cd C:\Program Files\MySQL\MySQL Server 8.0\bin
mysql -u root -h localhost -p
:: mysql -u root -h localhost -padmin

\! cls

:: -------------------------------------------------------------------------------
:: SHOW DATABASES;			-- lista todas las BD

:: USE database_name;			-- Conecta con una BD

:: SHOW TABLES;				-- Muestra las tablas de la BD actual

:: DESCRIBE name_table;			-- Describe la tabla table_name

:: \! cls				-- Limpia consola
:: system cls				-- Limpia consola

:: exit					-- Salir
:: quit					-- Salir

:: -- Comentario
:: # Comentario
:: /* Comentario */

:: -------------------------------------------------------------------------------
:: Recomendado usar la nomenclatura snake_case para nombrado de tablas y atributos
:: -------------------------------------------------------------------------------

:: -------------------------------------------------------------------------------
:: CREATE DATABASE test_db;		-- Crea una BD
:: DROP DATABASE test_db;		-- Elimina la BD
:: DROP DATABASE IF EXISTS test_db;	-- Elimina la BD si existe
:: -------------------------------------------------------------------------------

:: CREATE TABLE table_test (
:: id_product SERIAL PRIMARY KEY,
:: name_product VARCHAR(50) NOT NULL,
:: stock INTEGER NOT NULL,
:: price FLOAT NOT NULL);

:: INSERT INTO table_test (id_product, name_product, stock, price) VALUES (1,'PC',5,30.78);
:: INSERT INTO table_test VALUES (2, 'Tablet', 3, 20.40);
:: INSERT INTO table_test (name_product, stock, price) VALUES ('Laptop', 10, 28.50);

:: SELECT *FROM table_test;
:: SELECT name_product AS 'Productos nuevos', price AS "Precio" FROM table_test;

:: UPDATE table_test SET stock=4 WHERE id_product=1;
:: UPDATE table_test SET stock=2, price=25.49 WHERE id_product=2; 	/* ¡Sin WHERE cambia todo! */

:: DELETE FROM table_test WHERE id_product=3;
:: DELETE FROM table_test; 						/* ¡Sin WHERE elimina todo! */

:: TRUNCATE TABLE table_test;						/* Vacía y reinicia toda la tabla */		

:: DROP TABLE table_test;

:: ------------------------------- EXPORTAR BD -----------------------------------

:: cd C:\Program Files\MySQL\MySQL Server 8.0\bin
:: mysqldump -u root -p database_name > "C:\Users\%USERNAME%\Desktop\backup.sql"

:: ------------------------------- IMPORTAR BD -----------------------------------

::  --------- OPCIÓN 1 ------------

:: CREATE DATABASE databse_name;
:: quit

:: cd C:\Program Files\MySQL\MySQL Server 8.0\bin
:: mysql -u root -p databse_name < "C:\Users\%USERNAME%\Desktop\backup.sql"

::  --------- OPCIÓN 2 ------------

:: CREATE DATABASE databse_name;
:: quit

:: cd C:\Program Files\MySQL\MySQL Server 8.0\bin
:: mysql -u root -p < "C:\Users\%USERNAME%\Desktop\backup.sql" database_name

::  --------- OPCIÓN 3 - script de creación incluido -----------

:: cd C:\Program Files\MySQL\MySQL Server 8.0\bin
:: mysql -u root -p < "C:\Users\%USERNAME%\Desktop\backup.sql"