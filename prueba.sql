CREATE DATABASE prueba;
\c prueba;
CREATE TABLE cliente(id SERIAL, nombre VARCHAR(50), rut VARCHAR(10), direccion VARCHAR(200), PRIMARY KEY(id));

CREATE TABLE factura(numero_factura INT UNIQUE, fecha_factura DATE, subtotal INT, iva INT, precio_total INT, id_cliente INT, PRIMARY KEY(numero_factura), FOREIGN KEY(id_cliente) REFERENCES cliente(id));

CREATE TABLE categoria(id_categoria SERIAL, nombre_categoria VARCHAR(50), descripcion_categoria VARCHAR(300), PRIMARY KEY(id_categoria));

CREATE TABLE producto(id_producto SERIAL, nombre VARCHAR(50), descripcion VARCHAR(300),id_categoria INT, PRIMARY KEY(id_producto), FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria));

CREATE TABLE factura_producto(id_fp SERIAL, numero_factura INT, id_producto INT, cantida INT, valor_por_producto INT, precio_total_productos INT, PRIMARY KEY(id_fp), FOREIGN KEY (numero_factura) REFERENCES factura(numero_factura), FOREIGN KEY (id_producto) REFERENCES producto(id_producto));

INSERT INTO cliente(nombre, rut, direccion) VALUES ('Maria', '12345678-1', 'San Miguel');
INSERT INTO cliente(nombre, rut, direccion) VALUES ('Javiera', '12345678-2', 'lord cocharane');
INSERT INTO cliente(nombre, rut, direccion) VALUES ('Ignacia', '12345678-3', 'Ecuador');
INSERT INTO cliente(nombre, rut, direccion) VALUES ('Rosa', '12345678-4', 'San diego');
INSERT INTO cliente(nombre, rut, direccion) VALUES ('Mervin', '12345678-5', 'Pase Huerfanos');


INSERT INTO categoria (nombre_categoria, descripcion_categoria)  VALUES ('Maquillaje', 'base sub-tono amarillo');
INSERT INTO categoria (nombre_categoria, descripcion_categoria) VALUES ('Cuidado capilar', 'hidratantes de cabello');
INSERT INTO categoria (nombre_categoria, descripcion_categoria) VALUES ('Uñas', 'esmaltes y pinturas');


INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('polvo compacto', 'nailen',1);
INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('base oscura', 'maybellin',1);
INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('olaplex', 'super hidratante', 2);
INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('head and shoulder', 'shampo', 2);
INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('esmalte rosado', 'valmy', 3);
INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('biogel', 'anticaspa', 2);
INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('acetona', 'quita esmalte', 3);
INSERT INTO producto (nombre, descripcion, id_categoria) VALUES ('mascara de pestañas', 'volumen 3', 1);

INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (101, '03-03-2021', 105, 20, 125, 1);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (102, '04-03-2021', 255, 48, 303, 1);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (103, '03-04-2021', 35, 7, 42, 2);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (104, '04-04-2021', 295, 56, 352, 2);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (105, '05-04-2021', 190, 36, 226, 2);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (106, '06-04-2021', 240, 46, 286, 3);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (107, '07-04-2021', 105, 20, 125, 4);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (108, '08-04-2021', 145, 28, 173, 4);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (109, '09-04-2021', 160, 30, 190, 4);
INSERT INTO factura(numero_factura, fecha_factura, subtotal, iva, precio_total, id_cliente) VALUES (110, '10-04-2021', 150, 29, 179, 4);


INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(101, 1, 1, 50,50);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(101, 2, 1, 55,55);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(102, 1, 1, 50,50);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(102, 2, 1, 55,55);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(102, 3, 1, 150,150);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(103, 8, 1, 15,15);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(103, 7, 1, 20,20);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(104, 4, 1, 120,120);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(104, 3, 1, 150,150);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(104, 5, 1, 25,25);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(105, 8, 1, 15,15);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(105, 5, 1, 25,25);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(105, 3, 1, 150,150);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(106, 4, 2, 120,240);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(107, 1, 1, 50,50);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(107, 2, 1, 55,55);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(108, 2, 1, 55,55);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(108, 7, 1, 20,20);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(108, 6, 1, 70,70);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(109, 2, 1, 55,55);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(109, 7, 1, 20,20);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(109, 6, 1, 70,70);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(109, 8, 1, 15,15);
INSERT INTO factura_producto(numero_factura, id_producto, cantida, valor_por_producto, precio_total_productos) VALUES(110, 3, 1, 150,150);

SELECT nombre, precio_total FROM cliente INNER JOIN factura ON id_cliente=cliente.id ORDER BY precio_total DESC LIMIT 1;

SELECT nombre FROM cliente LEFT JOIN factura ON factura.id_cliente=cliente.id WHERE precio_total>100 GROUP BY cliente.nombre;

SELECT COUNT(id_cliente) FROM factura INNER JOIN factura_producto ON factura.numero_factura= factura_producto.numero_factura WHERE id_fp=6;