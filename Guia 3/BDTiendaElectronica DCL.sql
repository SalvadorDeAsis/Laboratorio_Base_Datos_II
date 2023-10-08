-- Base de Datos Tienda_Electronica
-- DCL
use Tienda_electronica;

-- ROLES

go
create role SysAdmin;
create role Personal_Ventas;
create role Tecnico_Informatica;
create role Asistente_Tecnico;

-- LOGINS
go
create login login_admin_gordon
with password = 'root';
go
create login login_PersonalVentaSandra
with password = 'Sandra_1995';
go
create login login_Tec_Inf_Pedro
with password = 'Pedro1234';
go
create login login_Ast_Tec_Alex
with password = 'Alex1234';


-- USUARIOS
go
create user admin_gordon
for login login_admin_gordon;
go
create user PersonalVentaSandra
for login login_PersonalVentaSandra;

create user Tec_Inf_Pedro
for login login_Tec_Inf_Pedro;
go
create user Ast_Tec_Alex
for login login_Ast_Tec_Alex;

-- AGREGAR USUARIOS A ROLES
go
alter role SysAdmin add member admin_gordon;
alter role Personal_Ventas add member PersonalVentaSandra;
alter role Tecnico_Informatica add member Tec_Inf_Pedro;
alter role Asistente_Tecnico add member Ast_Tec_Alex;

-- OTORGAR PERMISOS (En base a las opciones)
go
-- Administrador
grant control on database::Tienda_electronica to SysAdmin;




-- Consulta para obtener una lista de logins en la instancia de SQL Server
select name from sys.server_principals where type_desc = 'SQL_LOGIN';
go
-- Consulta para obtener una lista de usuarios en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'SQL_USER';
go
-- Consulta para obtener una lista de roles en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'DATABASE_ROLE';
