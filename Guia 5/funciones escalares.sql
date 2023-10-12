select * from DetalleCompras;
select * from Compras;
select * from Productos;


-- Insert DetalleCompra
-- insert 1
insert into DetalleCompras(CantidadProductos,SubTotal,ID_Producto,ID_Compra) values(2,0,2,1);
-- insert 2
insert into DetalleCompras(CantidadProductos,SubTotal,ID_Producto,ID_Compra) values(1,0,1,1);


create or alter function udfMonto(
	@idDetalleCompra int
)
returns decimal(10,2)
as
begin
	declare @Total decimal(10,2)
	declare @pr decimal(10,2)
	declare @id int

	Select @id = ID_Producto from DetalleCompras where @idDetalleCompra = ID_DetalleCompra;
	Select @pr = Precio from Productos where ID_Producto = @id;
	select @Total = CantidadProductos * @pr from DetalleCompras where @idDetalleCompra = ID_DetalleCompra;

	Return @Total
end

