set serveroutput on
create or replace package pkg
 as
function Func (Fun IN NUMBER)
return varchar2;
PROCEDURE proc(id_Studio NUMBER, StudioName Varchar2);
end;
/

create or replace package body pkg as
FUNCTION Func (Fun IN NUMBER)
return varchar2
AS
const VARCHAR2(64);
BEGIN
SELECT OriginalName INTO const FROM Anime WHERE 
Anime.ID = Func.Fun;
RETURN const;

EXCEPTION
when no_data_found THEN
dbms_output.put_line('Invalid!'); 
when others THEN
dbms_output.put_line('Just_Error!'); 
end Func;

procedure proc (id_Studio number, StudioName VARCHAR2)
as
begin
insert into Studio values (proc.id_Studio, proc.StudioName);
end;
end pkg;
/