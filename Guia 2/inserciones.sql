 use Tienda_electronica;
 --tabla distrito 
 -- Inserci�n 1
INSERT INTO Distrito (NombreDistrito) VALUES ('Distrito A');

-- Inserci�n 2
INSERT INTO Distrito (NombreDistrito) VALUES ('Distrito B');

-- Inserci�n 3
INSERT INTO Distrito (NombreDistrito) VALUES ('Distrito C');

-- Inserci�n 4
INSERT INTO Distrito (NombreDistrito) VALUES ('Distrito D');

-- Inserci�n 5
INSERT INTO Distrito (NombreDistrito) VALUES ('Distrito E');

 -- tabla direcciones
 select* from Distrito;

--tabla Driecciones 
-- Inserci�n 1
INSERT INTO Direcciones (NumeroCasa, PasajePoligono, Calle, Colonia, Canton, Caserio, Municipio, Departamento, CodigoPostal, Pais, ID_Distrito)
VALUES ('123', 'Pasaje A', 'Calle Principal', 'Colonia Norte', 'Canton Central', 'Caserio A', 'Ciudad A', 'Departamento A', '12345', 'Pa�s A', 1);

-- Inserci�n 2
INSERT INTO Direcciones (NumeroCasa, PasajePoligono, Calle, Colonia, Canton, Caserio, Municipio, Departamento, CodigoPostal, Pais, ID_Distrito)
VALUES ('456', 'Pasaje B', 'Calle Secundaria', 'Colonia Sur', 'Canton Norte', 'Caserio B', 'Ciudad B', 'Departamento B', '54321', 'Pa�s B', 2);

-- Inserci�n 3
INSERT INTO Direcciones (NumeroCasa, PasajePoligono, Calle, Colonia, Canton, Caserio, Municipio, Departamento, CodigoPostal, Pais, ID_Distrito)
VALUES ('789', 'Pasaje C', 'Calle Principal', 'Colonia Este', 'Canton Este', 'Caserio C', 'Ciudad C', 'Departamento C', '67890', 'Pa�s C', 3);

-- Inserci�n 4
INSERT INTO Direcciones (NumeroCasa, PasajePoligono, Calle, Colonia, Canton, Caserio, Municipio, Departamento, CodigoPostal, Pais, ID_Distrito)
VALUES ('101', 'Pasaje D', 'Calle Principal', 'Colonia Oeste', 'Canton Oeste', 'Caserio D', 'Ciudad D', 'Departamento D', '56789', 'Pa�s D', 4);

-- Inserci�n 5
INSERT INTO Direcciones (NumeroCasa, PasajePoligono, Calle, Colonia, Canton, Caserio, Municipio, Departamento, CodigoPostal, Pais, ID_Distrito)
VALUES ('111', 'Pasaje E', 'Calle Principal', 'Colonia Centro', 'Canton Centro', 'Caserio E', 'Ciudad E', 'Departamento E', '45678', 'Pa�s E', 5);

select * from Direcciones;
-- Tabla Proveedores
-- Inserci�n 1
INSERT INTO Proveedores (NombreProveedor, TelefonoProveedor, ID_Direccion)
VALUES ('Proveedor A', '1234567890', 7);

-- Inserci�n 2
INSERT INTO Proveedores (NombreProveedor, TelefonoProveedor, ID_Direccion)
VALUES ('Proveedor B', '9876543210', 8);

-- Inserci�n 3
INSERT INTO Proveedores (NombreProveedor, TelefonoProveedor, ID_Direccion)
VALUES ('Proveedor C', '5555555555', 9);

-- Inserci�n 4
INSERT INTO Proveedores (NombreProveedor, TelefonoProveedor, ID_Direccion)
VALUES ('Proveedor D', '4444444444', 10);

-- Inserci�n 5
INSERT INTO Proveedores (NombreProveedor, TelefonoProveedor, ID_Direccion)
VALUES ('Proveedor E', '7777777777', 11);

-- tabla clientes
-- Inserci�n 1
INSERT INTO Clientes (NombresCliente, ApellidosCliente, TelefonoCliente, EmailCliente, ID_Direccion)
VALUES ('Cliente A', 'ApellidoA', '1234567890', 'clienteA@example.com', 7);

-- Inserci�n 2
INSERT INTO Clientes (NombresCliente, ApellidosCliente, TelefonoCliente, EmailCliente, ID_Direccion)
VALUES ('Cliente B', 'ApellidoB', '9876543210', 'clienteB@example.com', 8);

-- Inserci�n 3
INSERT INTO Clientes (NombresCliente, ApellidosCliente, TelefonoCliente, EmailCliente, ID_Direccion)
VALUES ('Cliente C', 'ApellidoC', '5555555555', 'clienteC@example.com', 9);

-- Inserci�n 4
INSERT INTO Clientes (NombresCliente, ApellidosCliente, TelefonoCliente, EmailCliente, ID_Direccion)
VALUES ('Cliente D', 'ApellidoD', '4444444444', 'clienteD@example.com', 10);

-- Inserci�n 5
INSERT INTO Clientes (NombresCliente, ApellidosCliente, TelefonoCliente, EmailCliente, ID_Direccion)
VALUES ('Cliente E', 'ApellidoE', '7777777777', 'clienteE@example.com', 11);

select * from Proveedores;
-- tabla Pedidos
-- Inserci�n 1
INSERT INTO Pedidos (FechaPedido, MontoPedido, ID_Proveedor)
VALUES ('2023-07-01', 1500.00, 6);

-- Inserci�n 2
INSERT INTO Pedidos (FechaPedido, MontoPedido, ID_Proveedor)
VALUES ('2023-07-02', 2500.00, 7);

-- Inserci�n 3
INSERT INTO Pedidos (FechaPedido, MontoPedido, ID_Proveedor)
VALUES ('2023-07-03', 1800.00, 8);

-- Inserci�n 4
INSERT INTO Pedidos (FechaPedido, MontoPedido, ID_Proveedor)
VALUES ('2023-07-04', 1200.00, 9);

-- Inserci�n 5
INSERT INTO Pedidos (FechaPedido, MontoPedido, ID_Proveedor)
VALUES ('2023-07-05', 3000.00, 10);

--tabla compras
select * from Clientes;
-- Inserci�n 1
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-01', 500.00, 3);

-- Inserci�n 2
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-02', 750.00, 4);

-- Inserci�n 3
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-03', 1200.00, 5);

-- Inserci�n 4
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-04', 300.00, 6);

-- Inserci�n 5
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-05', 850.00, 7);


--Tabla Producto 
-- Inserci�n 1
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Laptop ASUS', 899.99, 10);

-- Inserci�n 2
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Monitor Samsung', 249.50, 20);

-- Inserci�n 3
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Teclado inal�mbrico Logitech', 34.99, 30);

-- Inserci�n 4
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Mouse �ptico HP', 12.99, 50);

-- Inserci�n 5
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Disco duro externo Seagate', 79.99, 15);
-- Inserci�n 6
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Smartphone Samsung Galaxy', 699.00, 25);

-- Inserci�n 7
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Impresora multifuncional HP', 159.99, 12);

-- Inserci�n 8
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Auriculares inal�mbricos Sony', 129.50, 18);

-- Inserci�n 9
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('Tablet Apple iPad', 499.00, 8);

-- Inserci�n 10
INSERT INTO Productos (Descripcion, Precio, Existencia)
VALUES ('C�mara digital Canon', 299.99, 6);

--tabla DetallePedidos
select * from Productos;
-- Inserci�n 1
INSERT INTO DetallePedidos (CantidadProductos, ID_Pedido, ID_Producto)
VALUES (3, 1, 1);

-- Inserci�n 2
INSERT INTO DetallePedidos (CantidadProductos, ID_Pedido, ID_Producto)
VALUES (5, 2, 2);

-- Inserci�n 3
INSERT INTO DetallePedidos (CantidadProductos, ID_Pedido, ID_Producto)
VALUES (2, 3, 3);

-- Inserci�n 4
INSERT INTO DetallePedidos (CantidadProductos, ID_Pedido, ID_Producto)
VALUES (4, 4, 1);

-- Inserci�n 5
INSERT INTO DetallePedidos (CantidadProductos, ID_Pedido, ID_Producto)
VALUES (6, 5, 2);


-- tablacompra
select * from Clientes;
-- Inserci�n 1
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-01', 150.00, 3);

-- Inserci�n 2
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-02', 85.50, 4);

-- Inserci�n 3
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-03', 320.75, 3);

-- Inserci�n 4
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-04', 55.00, 5);

-- Inserci�n 5
INSERT INTO Compras (FechaCompra, MontoCompra, ID_Cliente)
VALUES ('2023-07-05', 200.25, 6);

-- tabla detallescompra
select* from Compras;
-- Inserci�n 1
INSERT INTO DetalleCompras (ID_DetalleCompra, CantidadProductos, ID_Producto, ID_Compra)
VALUES (1, 3, 1, 6);

-- Inserci�n 2
INSERT INTO DetalleCompras (ID_DetalleCompra, CantidadProductos, ID_Producto, ID_Compra)
VALUES (2, 5, 2, 9);

-- Inserci�n 3
INSERT INTO DetalleCompras (ID_DetalleCompra, CantidadProductos, ID_Producto, ID_Compra)
VALUES (3, 2, 3, 11);

-- Inserci�n 4
INSERT INTO DetalleCompras (ID_DetalleCompra, CantidadProductos, ID_Producto, ID_Compra)
VALUES (4, 1, 1, 12);

-- Inserci�n 5
INSERT INTO DetalleCompras (ID_DetalleCompra, CantidadProductos, ID_Producto, ID_Compra)
VALUES (5, 4, 4, 10);
