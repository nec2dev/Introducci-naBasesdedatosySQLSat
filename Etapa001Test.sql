/*----------Etapa 1.1----------*/
/*1. Crea una base de datos llamada LABORATORIO. En
el caso de que la base de datos exista previamente,
eliminarla antes de iniciar el laboratorio.*/
CREATE DATABASE LABORATORIOTEST;

#2. Pon en uso la base de datos generada en el paso anterior.
USE LABORATORIOTEST;

#3. Crea una tabla con el nombre FACTURAS dentro de la base de datos.
CREATE TABLE FACTURAS(
Letra CHAR, 
Numero INTEGER, 
ClienteID INT, 
ArticuloID INT, 
Fecha DATE, 
Monto DOUBLE, 
PRIMARY KEY(Letra, Numero));
DESCRIBE FACTURAS;

/*4. Crea una tabla con el nombre ARTÍCULOS
dentro de la base de datos.*/
CREATE TABLE ARTICULOS (
ArticuloID INT PRIMARY KEY,
Nombre VARCHAR(50),
Precio DOUBLE,
Stock INT);
DESC ARTICULOS;

#5. Crea una tabla con el nombre CLIENTES dentro de la base de datos.
CREATE TABLE CLIENTES (
ClienteID INT PRIMARY KEY,
Nombre VARCHAR(25),
Apellido VARCHAR(25),
CUIT CHAR(16),
Direccion VARCHAR(50),
Comentarios VARCHAR(50)
);
DESC CLIENTES;

#6. Muestra un listado de todas las bases de datos alojadas en el servidor.
SHOW DATABASES;

/*7. Muestra un listado de todas las tablas
generadas anteriormente dentro de la base
de datos con el nombre LABORATORIO.
8. Comenta la instrucción que lista las tablas
contenidas dentro de la base de datos LABORATORIO.*/
#SHOW TABLES;

#9. Describe la estructura de la tabla CLIENTES.
DESCRIBE CLIENTES;


/*----------Etapa 1.2----------*/
/*1. Modifica la tabla FACTURAS tomando en cuenta las siguientes consideraciones:
a. Cambia el nombre del campo ClienteID por IDCliente, manteniendo su tipo de dato y
restricciones ya definidas.
b. Cambia el nombre del campo ArticuloID por IDArticulo, manteniendo su tipo de
dato y restricciones ya definidas.
c. Asigna la restricción UNSIGNED al campo
Monto, manteniendo el tipo de dato ya
definido para el campo.*/
ALTER TABLE FACTURAS
CHANGE ClienteID IDCliente INT,
CHANGE ArticuloID IDArticulo INT,
MODIFY Monto DOUBLE UNSIGNED;
DESC FACTURAS;

/*2. Modifica la tabla ARTICULOS tomando en cuenta las siguientes consideraciones:
a. Cambia el nombre del campo ArticuloID por IDArticulo, manteniendo su tipo de
dato y restricciones ya definidas.
b. Cambia el tipo de dato del campo Nombre para que admita hasta 75 caracteres.
c. Asigna las restricciones UNSIGNED y NOT NULL al campo Precio, manteniendo el
tipo de dato ya definido para el campo.
d. Asigna las restricciones UNSIGNED y NOT NULL al campo Stock, manteniendo el tipo
de dato ya definido para el campo.*/
ALTER TABLE ARTICULOS
CHANGE ArticuloID IDArticulo INT,
MODIFY Nombre VARCHAR(75),
MODIFY Precio DOUBLE UNSIGNED NOT NULL,
MODIFY Stock INT UNSIGNED NOT NULL;
DESC ARTICULOS;

/*3. Modifica la tabla CLIENTES. Toma en cuenta las siguientes consideraciones:
a. Cambia el nombre del campo ClienteID por IDCliente, manteniendo su tipo de dato y
restricciones ya definidas.
b. Cambia el tipo de dato del campo Nombre para que admita hasta 30 caracteres y
asigne la restricción correspondiente para que su carga sea obligatoria.
c. Cambia el tipo de dato del campo Apellido para que admita hasta 35 caracteres y
asigne la restricción correspondiente para que su carga sea obligatoria.
d. Cambia el nombre del campo Comentarios por Observaciones y su tipo de dato para
que admita hasta 255 caracteres.*/
ALTER TABLE CLIENTES
CHANGE ClienteID IDCliente INT,
MODIFY Nombre VARCHAR(30) NOT NULL,
MODIFY Apellido VARCHAR(35) NOT NULL,
CHANGE Comentarios Observaciones VARCHAR(255);
DESC CLIENTES;

/*----------Etapa 1.3----------*/
#1. Carga 5 registros en la tabla FACTURAS, tal como se detallan a continuación:
INSERT INTO FACTURAS VALUES 
('A', 28, 14, 335, '2021-03-18', 1589.50),
('A', 39, 26, 157, '2021-04-12', 979.75),
('B', 8, 17, 95, '2021-04-25', 513.35),
('B', 12, 5, 411, '2021-05-03', 2385.70),
('B', 19, 50, 157, '2021-05-26', 979.75);
SELECT * FROM FACTURAS;
DESC FACTURAS;

#2. Carga 4 registros en la tabla ARTÍCULOS.
INSERT INTO ARTICULOS
VALUES (95, 'Webcam con Micrófono Plug & Play', 513.35, 39),
(157, 'Apple AirPods Pro', 979.75, 152),
(335, 'Lavasecarropas Automático Samsung', 1589.50, 12),
(411, 'Gloria Trevi / Gloria / CD+DVD', 2385.70, 2);
SELECT * FROM ARTICULOS;
DESC ARTICULOS;

#3. Carga 5 registros en la tabla CLIENTES.
INSERT INTO CLIENTES VALUES 
(5, 'Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7ºA', 'VIP'),
(14, 'Gloria', 'Fernández', '23-35965852-5', 'Constitución 323', 'GBA'),
(17, 'Gonzalo', 'López', '23-33587416-0', 'Arias 2624', 'GBA'),
(26, 'Carlos', 'García', '23-42321230-9', 'Pasteur 322 - 2ºC', 'VIP'),
(50, 'Micaela', 'Altieri', '23-22885566-5', 'Santamarina 1255', 'GBA');
SELECT * FROM CLIENTES;

