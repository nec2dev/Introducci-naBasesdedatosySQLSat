#<-------------Etapa 2.1------------->
/*1. Importar el archivo CSV con el nombre 
CLIENTES_NEPTUNO (éste se encuentra 
disponible en el área de descargas, del 
presente módulo) a la base de datos con el 
nombre LABORATORIO. Y tener en cuenta 
las siguientes indicaciones:
a. No cambiar el nombre de la tabla.
b. Eliminar la tabla en el caso de que ya 
exista dentro de la base de datos.
c. Mantener los tipos de datos asignados al 
momento de la importación.*/
USE laboratorio;
DESC clientes_neptuno;
SELECT * FROM clientes_neptuno;

#<-------------Etapa 2.2------------->
/*2. Llevar a cabo los siguientes cambios en la tabla CLIENTES_NEPTUNO importada anteriormente. 
Respetar las consignas detalladas a continuación y utilizar el comando ALTER TABLE:
a. Campo IDCliente: debe ser de tipo VARCHAR, debe admitir hasta 5 caracteres como máximo y debe ser el campo 
PRIMARY KEY de la tabla.
b. Campo NombreCompania: debe ser de tipo VARCHAR, debe admitir hasta 100 caracteres como máximo y no puede 
quedar vacío.
c. Campo Pais: debe ser de tipo VARCHAR, debe admitir hasta 15 caracteres como 
máximo y no puede quedar vacío.*/
ALTER TABLE clientes_neptuno
	MODIFY IDCliente VARCHAR(5) PRIMARY KEY,
    MODIFY NombreCompania VARCHAR(100) NOT NULL,
    MODIFY Pais VARCHAR(15) NOT NULL;
DESC clientes_neptuno;

#<-------------Etapa 2.3------------->
/*3. Cambiar el nombre de la tabla CLIENTES por 
CONTACTOS.*/
RENAME TABLE clientes TO contactos;
SHOW TABLES;

#<-------------Etapa 2.4------------->
/*4. Importar el archivo CSV con el nombre CLIENTES a la base de 
datos LABORATORIOTEST. Y tener en cuenta las siguientes indicaciones:
a. Este archivo lo encontrarás disponible en el área de descargas del presente módulo.
b. No cambiar el nombre de la tabla.
c. Mantener los tipos de datos asignados al momento de la importación*/
DESC clientes;

#<-------------Etapa 2.5------------->
/*5. Llevar a cabo los siguientes cambios en la  tabla CLIENTES importada anteriormente. 
Respetar las consignas detalladas a continuación y utiliza el comando ALTER TABLE:
a. Campo Cod_Cliente: debe ser de tipo VARCHAR, debe admitir hasta 7 caracteres como 
máximo y debe ser el campo PRIMARY KEY de la tabla.
b. Campo Empresa: debe ser de tipo VARCHAR, debe admitir hasta 100 caracteres como máximo 
y no puede quedar vacío.
c. Campo Ciudad: debe ser de tipo VARCHAR, debe admitir hasta 25 caracteres como máximo y 
no puede quedar vacío.
d. Campo Telefono: debe ser de tipo INT y no debe admitir valores numéricos negativos.
e. Campo Responsable: debe ser de tipo VARCHAR y debe admitir como máximo hasta 30 caracteres*/
ALTER TABLE clientes
	MODIFY Cod_Cliente VARCHAR(7) PRIMARY KEY,
    MODIFY empresa VARCHAR(100) NOT NULL,
    MODIFY ciudad VARCHAR(25) NOT NULL,
    MODIFY telefono INT UNSIGNED,
    MODIFY responsable VARCHAR(30);
DESC clientes;

