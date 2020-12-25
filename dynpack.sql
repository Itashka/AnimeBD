create or replace package packdyn
as
id_Genre# number:=null;
procedure dropl (id_Genre number);
end;
/

create or replace package body
packdyn as
procedure dropl (id_Genre number)
as
begin
execute immediate 'delete from Genre where id_Genre=:id_Genre'
using id_Genre;
end;
end packdyn;
/