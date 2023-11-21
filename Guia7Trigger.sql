use TiendaElectronica;

create table ProductLog(
	LogID int identity(1,1) not null,
	ProductID int not null,
	usuario nvarchar(200) not null,
	Operacion nvarchar(10) not null,
	FechaActualizacion datetime not null
);


create or alter trigger trgActualizarProductoLog on dbo.Productos
after update
as
	  
	DECLARE @usuario VARCHAR(50)
	SELECT @usuario = login_name
	FROM sys.dm_exec_sessions
	WHERE session_id = @@SPID;

	insert into ProductLog(ProductID,usuario,Operacion,FechaActualizacion)
	Select ID_Producto,@usuario,'Actualizar',GETDATE()from deleted; -- tabla temporal;

-- Se Registra los comando update cuando se modifica
	select * from Productos;
	select * from ProductLog;
	update  Empleado(5,'evasdads', 'Lopez','eva@yahoo.es','10',1500.00);
	UPDATE Productos SET Descripcion = 'Tablet Intel' WHERE ID_Producto = 7;



-- Trigger Eliminar

create or alter trigger trgEliminarProductoLog on dbo.Productos
after delete
as
	DECLARE @usuario VARCHAR(50)
	SELECT @usuario = login_name
	FROM sys.dm_exec_sessions
	WHERE session_id = @@SPID;

	insert into ProductLog(ProductID,usuario,Operacion,FechaActualizacion)
	Select ID_Producto,@usuario ,'Eliminar',GETDATE()from deleted; -- tabla temporal;
	
	--Verificando el comando 
  DELETE FROM Productos WHERE ID_Producto = 8;


  -- Trigger Insertar
create or alter trigger trgInsertarProductoLog on dbo.Productos
after insert
as
	DECLARE @usuario VARCHAR(50)
	SELECT @usuario = login_name
	FROM sys.dm_exec_sessions
	WHERE session_id = @@SPID;

	insert into ProductLog(ProductID,usuario,Operacion,FechaActualizacion)
	Select ID_Producto,@usuario,'Insertar',GETDATE() from inserted; -- tabla temporal;

Insert into Productos Values('Monitor LG 22 pulgadas',120.00,10);