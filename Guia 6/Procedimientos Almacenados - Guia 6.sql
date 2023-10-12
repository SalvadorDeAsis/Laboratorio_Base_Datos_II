create or alter procedure MostrarCompras
as
	begin
	-- Mostrara Registros de la Tabla Compras y Clientes
		Select 
			c.FechaCompra,
			c.MontoCompra,
			cl.NombresCliente,
			cl.ApellidosCliente
		From
			Compras as c		
			INNER JOIN Clientes as cl ON  c.ID_Compra = cl.ID_Cliente
		Order by
			cl.ID_Cliente;	

end;

execute MostrarCompras;


Select * from Clientes;

Create or alter procedure AgregarCliente
	@NombreCliente nvarchar(60),
	@ApellidoClientes nvarchar(60),
	@TelCliente nvarchar(10),
	@EmailCliente nvarchar(60),
	@ID_Direccion int
as
begin
	insert into  Clientes values(
		@NombreCliente ,
		@ApellidoClientes,
		@TelCliente,
		@EmailCliente,
		@ID_Direccion);

	select * from Clientes;
end;

-- Llamado al Procedimiento Agreagar Cliente

execute AgregarCliente
	'Pedro Alberto',
	'Gonzales Guitierrez',
	'6783-4590',
	'pedro@yahoo.es',
	'1';
