--Guia 8 Secuencias


-- Secuencia para llave primaria
create sequence ID_factura
	start with 1
	increment by 1
	minvalue 1
	maxvalue 99999999



-- Nueva Tabla Factura
Create table Factura(
	ID_Factura varchar(100) primary key,
	ID_Cliente int,
	ID_Compra int,
	TotalPagar DECIMAL(10, 2),
	FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
	FOREIGN KEY (ID_Compra) REFERENCES Compras(ID_Compra)
	
);
-- Prueba de insert para ver si funciona la seguencia
insert into Factura(ID_Factura,ID_Cliente,ID_Compra,TotalPagar) values(CONCAT(next value for ID_Factura,'-2023'),1,1,0);



-- Un procedimiento para insertar Factura
Create or alter procedure AgregarFactura
	@ID_Cliente int,
	@ID_Compra int,
	@TotalPagar DECIMAL(10, 2)
as
begin
	insert into  Factura values(CONCAT(next value for ID_Factura,'-2023'),@ID_Cliente,@ID_Compra,@TotalPagar);
	select * from Factura;
end;

execute AgregarFactura 
			'1',
			'2',
			'0';


-- Consultar secuencias guardadas
select * from sys.sequences;