create procedure DeleteEmp
is
 v_empno emp.empno%type := '9000';
begin
    delete  from emp
    where empno = v_empno;
    dbms_output.PUT_LINE('delete 건수 :'||sql%rowcount);
    commit;

    
end;
/

