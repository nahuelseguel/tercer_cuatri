use facturacion_1;
select * from e01_cliente; -- Mostrar todos los clientes registrados en la base de datos. 
select nombre, apellido from e01_cliente; -- Listar solo el nombre y apellido de todos los clientes. 
select nombre, precio, stock from e01_producto; -- Mostrar todos los productos con sus precios y stock
select nombre, apellido, direccion from e01_cliente where activo > 100; -- Mostrar el nombre, apellido y dirección de los clientes que tengan un valor de activo mayor a 100. 
select * from e01_producto where precio > 800; -- Listar todos los productos cuyo precio sea mayor a 800
select * from e01_cliente where apellido like "M%"; -- Mostrar todos los clientes cuyo apellido comience con la letra M.
select * from e01_producto where nombre like "meat%"; -- Mostrar los productos cuyo nombre contenga la palabra meat. 
select distinct marca from e01_producto; -- Obtener las diferentes marcas de productos (sin repetir).
select * from e01_cliente where activo between 50 and 100; -- Mostrar todos los clientes cuyo valor de activo esté entre 50 y 100. 
select * from e01_producto where precio > 500 and stock > 400; -- Listar los productos cuyo precio sea mayor a 500 y su stock mayor a 400. 
select * from e01_cliente where apellido like "rose%" or apellido like "allen%"; -- Listar los clientes cuyo apellido sea “Rose” o “Allen”. 
select * from  e01_cliente where nombre like "%a%"; -- Mostrar los clientes cuyo nombre contenga la letra a en cualquier posición.
select * from e01_producto where precio between 200 and 600; -- Listar los productos cuyo precio esté entre 200 y 600.
select * from e01_producto where stock < 100; --  Mostrar los productos que tengan un stock menor a 100. 
select * from  e01_cliente where direccion like "%avenida%"; --  Listar todos los clientes cuya dirección contenga la palabra Avenida. 
select * from e01_producto where descripcion like "%nulla%"; --  Mostrar los productos que tengan en el campo descripcion la palabra Nulla. 
select * from e01_producto where precio < 300 or stock > 900; --  Obtener todos los productos con precio menor a 300 o stock mayor a 900. 
select * from  e01_cliente where activo in (0,50,100); --  Listar los clientes cuyo campo activo sea igual a 0, 50 o 100 (no hay, pero funciona).
select * from e01_producto where marca like "%company"; --  Mostrar los productos cuya marca termine con la palabra Company.
select * from  e01_cliente where nombre like "c%" and activo > 80; --  Listar los clientes cuyo nombre empiece con “C” y su activo sea mayor a 80. 
select * from e01_producto order by precio desc; --  Mostrar los productos ordenados por precio de mayor a menor. 
select * from  e01_cliente order by nro_cliente asc limit 10; --  Mostrar los 10 primeros clientes ingresados en la tabla. 
select max(precio), min(precio) from e01_producto; --  Obtener el producto más caro y el más barato. 
select count(nro_cliente) from e01_cliente; --  Contar cuántos clientes están registrados en la base de datos. 
select count(codigo_producto) from e01_producto where precio > 500; --  Contar cuántos productos tienen un precio mayor a 500.
select avg(precio) from e01_producto; --  Calcular el promedio de los precios de todos los productos. 
select sum(stock) from e01_producto; --  Calcular el stock total disponible de todos los productos.
insert into e01_cliente (nro_cliente ,nombre, apellido, direccion, activo) values (101 ,"yo", "yoyo", "yo 666", 23), (102 ,"el", "elel", "el 777", 41); --  Insertar dos clientes nuevos en la tabla E01_CLIENTE. 
insert into e01_producto (codigo_producto, marca, nombre, descripcion, precio, stock) values (101 ,"asdf", "fernet", "fernet fermet", 15000, 20), (102 ,"qwer", "cheetos", "snack", 5000, 30); --  Insertar dos productos nuevos en la tabla E01_PRODUCTO. 
update e01_cliente set direccion = "el 777" where nro_cliente = 102; --  Actualizar la dirección de un cliente (a elección). 
update e01_producto set stock = (stock - 10) where codigo_producto = 90; --  Actualizar el stock de un producto restando 10 unidades. 
update e01_producto  set precio = (precio * 1.10) where marca = "Proin LLP"; --  Subir un 10% el precio de todos los productos de una marca específica.
delete from e01_cliente where nro_cliente = 102; --  Eliminar un cliente (a elección).
delete from e01_producto where codigo_producto = 1; --  Eliminar un producto (a elección). 