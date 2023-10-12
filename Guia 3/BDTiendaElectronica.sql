create database Tienda_electronica;
go 
use Tienda_electronica;
go 
-- Tabla Productos
CREATE TABLE Productos (
  ID_Producto INT PRIMARY KEY IDENTITY(1,1),
  Descripcion NVARCHAR(MAX) NOT NULL,
  Precio DECIMAL(10, 2) NOT NULL,
  Existencia INT NOT NULL
);
create table Departamentos(
	ID_Departamento char(2) primary key,
	Departamento varchar(60) not null,
	Pais varchar(60)
);

create table Municipios(
	ID_Municipio char(3) primary key,
	Municipio varchar(60) not null,
	ID_Departamento char(2) not null
);
go
create table Distritos(
	ID_Distrito varchar(5) primary key,
	Distrito varchar(60) not null,
	ID_Municipio char(3) not null
);
go
create table Direcciones(
	ID_Direccion int primary key identity(1, 1),
    Linea1 varchar(100) not null,
    Linea2 varchar(100),
    ID_Distrito varchar(5) not null,
    CodigoPostal int,
);

-- Tabla Clientes
CREATE TABLE Clientes (
  ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
  NombresCliente NVARCHAR(60) NOT NULL,
  ApellidosCliente NVARCHAR(60) NOT NULL,
  TelefonoCliente NVARCHAR(10) NOT NULL,
  EmailCliente NVARCHAR(60) NOT NULL,
  ID_Direccion INT NOT NULL,
  FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Proveedores
CREATE TABLE Proveedores (
  ID_Proveedor INT PRIMARY KEY IDENTITY(1,1),
  NombreProveedor NVARCHAR(60) NOT NULL,
  TelefonoProveedor NVARCHAR(10) NOT NULL,
  ID_Direccion INT NOT NULL,
  FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla Pedidos
CREATE TABLE Pedidos (
  ID_Pedido INT PRIMARY KEY IDENTITY(1,1),
  FechaPedido DATE NOT NULL,
  MontoPedido DECIMAL(10, 2) NOT NULL,
  ID_Proveedor INT NOT NULL,
  FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor) ON DELETE CASCADE ON UPDATE CASCADE
);
-- Tabla Compras
CREATE TABLE Compras (
  ID_Compra INT PRIMARY KEY IDENTITY(1,1),
  FechaCompra DATE NOT NULL,
  MontoCompra DECIMAL(10, 2) NOT NULL,
  ID_Cliente INT NOT NULL,
  FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente) ON DELETE CASCADE ON UPDATE CASCADE
);
-- Tabla DetallePedidos
CREATE TABLE DetallePedidos (
  ID_DetallePedido INT PRIMARY KEY IDENTITY(1,1),
  CantidadProductos INT NOT NULL,
  ID_Pedido INT NOT NULL,
  ID_Producto INT NOT NULL,
  FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tabla DetalleCompras
CREATE TABLE  DetalleCompras (
  ID_DetalleCompra INT IDENTITY(1,1)NOT NULL,
  CantidadProductos INT NOT NULL,
  SubTotal decimal (10, 2),
  ID_Producto INT NOT NULL,
  ID_Compra INT NOT NULL,
  PRIMARY KEY (ID_DetalleCompra, ID_Producto, ID_Compra),
  FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (ID_Compra) REFERENCES Compras(ID_Compra) ON DELETE CASCADE ON UPDATE CASCADE
);
Create table Cargo(
	ID_Cargo INT  PRIMARY KEY IDENTITY(1,1),
	Cargo VARCHAR(MAX) NOT NULL
);

Create table Empleados(
	ID_Empleado INT PRIMARY KEY IDENTITY(1,1),
	Dui_Empleado VARCHAR(10)NOT NULL,
	ISSS_Empleado VARCHAR(10)NOT NULL,
	NombresEmpleado VARCHAR(50)NOT NULL,
	ApellidosEmpleado VARCHAR(50)NOT NULL,
	FechaNacEmpledo DATE NOT NULL,
	Telefeno VARCHAR(20)NOT NULL,
	Correo VARCHAR(50)NOT NULL,
	ID_Cargo INT NOT NULL,
	ID_Direccion INT NOT NULL

	FOREIGN KEY  (ID_Direccion) REFERENCES Direcciones(ID_Direccion) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY  (ID_Cargo) REFERENCES Cargo(ID_Cargo) ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE Opciones(
	ID_Opcion INT PRIMARY KEY IDENTITY(1,1),
	Opcion VARCHAR(MAX) NOT NULL

);

CREATE TABLE Roles(
	ID_Rol INT PRIMARY KEY IDENTITY(1,1),
	NombreRol VARCHAR(300) NOT NULL
);

CREATE TABLE AsignacionRolesOPciones(
	ID_Asignacion INT PRIMARY KEY IDENTITY(1,1),
	ID_Rol INT,
	ID_Opcion INT

	FOREIGN KEY  (ID_Rol) REFERENCES Roles(ID_Rol) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY  (ID_Opcion) REFERENCES Opciones(ID_Opcion) ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE Usuarios(
	ID_Usuario INT PRIMARY KEY IDENTITY(1,1),
	ID_Empleado INT,
	ID_Rol INT,
	Usuario VARCHAR(300) NOT NULL,
	Clave VARCHAR(300) NOT NULL

	FOREIGN KEY  (ID_Rol) REFERENCES Roles(ID_Rol) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY  (ID_Empleado) REFERENCES Empleados(ID_Empleado) ON DELETE CASCADE ON UPDATE CASCADE,
);
alter table Municipios add foreign key (ID_Departamento) references Departamentos(ID_Departamento);
alter table Distritos add foreign key (ID_Municipio) references Municipios(ID_Municipio);
alter table Direcciones add foreign key (ID_Distrito) references Distritos(ID_Distrito);