create or alter view VistaEmpleados as
	Select
		Emp.ID_Empleado,
		Emp.NombresEmpleado,
		Emp.ApellidosEmpleado,
		Emp.Telefono,
		Dir.Linea1,
		Dir.Linea2,
		Dis.Distrito,
		Mun.Municipio
	from Empleados Emp
	inner join Direcciones Dir on Emp.ID_Direccion = Dir.ID_Direccion
	inner join Distritos Dis on Dis.ID_Distrito = Dir.ID_Distrito
	inner join Municipios Mun on Dis.ID_Municipio = Mun.ID_Municipio;

	-- Ver vista
	Select * from VistaEmpleados;