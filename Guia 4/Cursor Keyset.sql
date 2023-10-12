-- Cursor Keyset
declare @Nombres varchar(60)
declare @Apellidos varchar(60)
declare @telefono Varchar(7)

declare CursorKeyset cursor keyset for
select NombresEmpleado, ApellidosEmpleado, Telefeno
from Empleados;

open CursorKeyset
fetch next from CursorKeyset into @Nombres, @Apellidos, @Telefono

while @@FETCH_STATUS = 0
begin
	-- Para concatenar un entero, debe cambiarse la variable int por varchar
	-- o convertir (CAST o CONVERT) el campo entero a una variable varchar
	print @Nombres + ' ' + @Apellidos + ' - ' + @Telefono
	fetch next from CursorKeyset into @Nombres, @Apellidos, @Telefono
end

close CursorKeyset
deallocate CursorKeyset