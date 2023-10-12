-- LLAMANADO A LA FUNCION

select * from DetalleCompras;
declare @SubTotal decimal(10,2)
declare @id int = 2;

select @SubTotal = dbo.udfMonto(@id);

--ACTUALIZADO LA TABLA

update DetalleCompras
set SubTotal = @SubTotal
where @id = ID_DetalleCompra;