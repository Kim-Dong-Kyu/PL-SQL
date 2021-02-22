create or replace procedure fn_SalRate
is
    v_ename emp.ENAME%type;
    v_empno emp.EMPNO%type;
    v_rate number := 1.1;
    v_sal number;
begin
    v_empno := 7788;
    SELECT ename , (sal + comm)*v_rate into v_ename, v_sal
    from emp
    where empno = v_empno ;
    DBMS_OUTPUT.PUT_LINE( v_ename);
end;


