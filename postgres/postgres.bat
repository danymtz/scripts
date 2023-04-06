:: PostgreSQL 14.5

@echo off
color 03
C:
cd C:\Program Files\PostgreSQL\14\bin\
psql -U postgres -h localhost

:: psql -U postgres -h localhost -p 5432 database_name

cls
\! cls

::configurar puerto: Ir a postgresl\14\data\potgresql.conf
:: port = 5432
:: psql --help
:: w: dmtzadmin

:: --------------------------------------------------------------------------
:: \list			-- lista todas las BD
:: \l				-- lista todas las BD

:: \connect			-- Indica la BD actual
:: \c				-- Indica la BD actual

:: \connect database_name	-- Conecta con una BD
:: \c database_name		-- Conecta con una BD

:: \dt				-- Muestra las tablas de la BD actual

:: \d table_name		-- Describe la tabla table_name

:: \! cls			-- Limpia consola

:: \quit			-- Salir
:: \q				-- Salir

:: -- Comentario
:: /* Comentario */;

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
:: SELECT name_product AS "Productos nuevos", price AS "Precio" FROM table_test;

:: UPDATE table_test SET stock=4 WHERE id_product=1;
:: UPDATE table_test SET stock=2, price=25.49 WHERE id_product=2; 	/* ¡Sin WHERE cambia todo! */

:: DELETE FROM table_test WHERE id_product=3;
:: DELETE FROM table_test; 						/* ¡Sin WHERE elimina todo! */

:: TRUNCATE TABLE table_test;						/* Vacía toda la tabla */		

:: DROP TABLE table_test;

:: ------------------------------- EXPORTAR BD -----------------------------------

:: cd C:\Program Files\PostgreSQL\14\bin\
:: pg_dump -h localhost -U postgres database_name > "C:\Users\%USERNAME%\Desktop\dump.sql"

:: ------------------------------- IMPORTAR BD -----------------------------------

::  --------- OPCIÓN 1 -----------

:: CREATE DATABASE test_db_import;
:: \q

:: cd C:\Program Files\PostgreSQL\14\bin\
:: psql -h localhost -U postgres database_name < "C:\Users\%USERNAME%\Desktop\dump.sql"

::  --------- OPCIÓN 2 -----------

:: CREATE DATABASE test_db_import;
:: \q

:: cd C:\Program Files\PostgreSQL\14\bin\
:: psql -h localhost -U postgres -f "C:\Users\%USERNAME%\Desktop\dump.sql" test_db

::  --------- OPCIÓN 3 - script de creación incluido -----------

:: cd C:\Program Files\PostgreSQL\14\bin\
:: psql -h localhost -U postgres -f "C:\Users\%USERNAME%\Desktop\dump.sql"

::  --------- OPCIÓN 4 - script de creación incluido -----------

:: cd C:\Program Files\PostgreSQL\14\bin\
:: psql -h localhost -U postgres < "C:\Users\%USERNAME%\Desktop\dump.sql"

