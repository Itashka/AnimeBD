set serveroutput on

create or replace procedure ProcNeyavn as
begin
for CurNeyavn in (select * from Genre)
loop
dbms_output.put_line(CurNeyavn.GenreName);
end loop;
end;
/