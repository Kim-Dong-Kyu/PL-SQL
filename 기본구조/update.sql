create or replace procedure  updateEmp_proc
is
begin
   update emp
       set DEPTNO = 40
    where EMPNO =9000;
    DBMS_OUTPUT.PUT_LINE('update 건수 :' || SQL%rowcount);
end;