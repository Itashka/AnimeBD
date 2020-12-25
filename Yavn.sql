set serveroutput on

create or replace procedure ProcYavn as
cursor CurYavn is select * from Genre;
begin
for CurNeyavn in CurYavn
loop
dbms_output.put_line(CurNeyavn.GenreName);
end loop;
end;
/