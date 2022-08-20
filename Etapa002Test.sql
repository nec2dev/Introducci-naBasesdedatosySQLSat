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

