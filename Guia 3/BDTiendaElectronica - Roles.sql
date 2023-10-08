-- MANEJO DE ROLES
-- Opciones
insert into Opciones values
 
-- NombreOpcion
	('insertar'), -- 1
	('Actualizar'),  -- 2
	('Select'), -- 3
	('Eliminar'), -- 4
	('Sin Permisos'); --5
go
select * from Opciones;

-- Roles
go
insert into Roles values
-- NombreRol
	('SysAdmin'), -- 1
	('Personal de ventas'), -- 2
	('Técnico en informática'),  -- 3
	('Asistente técnico');  -- 4
go
select * from Roles;

-- AsignacionesRolesOpciones
go
insert into AsignacionRolesOpciones values
-- ID_Rol, ID_Opcion
	-- SysAdmin: Todos los permisos
	('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), 

	-- Personal de ventas: 
	('2', '1'),  -- 
	('2', '2'), -- 
	('2', '3'), -- 
	-- Técnico en informática
	('3', '3'),  -- Select

	-- Asistente técnico
	('4', '5');  -- 
	
go
select * from AsignacionRolesOpciones;

-- Usuarios
go
insert into Usuarios values
	-- ID_Empleado, ID_Rol, Usuario, Clave
	-- Administrador
	('1', '1', 'admin_Gordon', 'root'),
	-- Personal de ventas
	('2', '2', 'PV_Max', 'max1234'),
	-- Técnico en informática
	('3', '3', 'Tec_Inf_Alan', 'alan1234'),
	-- RRHH
	('4', '4', 'Ast_Tec_Erick', 'erick1234');
go

select * from Usuarios;