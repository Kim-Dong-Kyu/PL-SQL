-- 프로시저 이지만 서버에 저장되지 않는 서브 프로그램

declare 
    function get_ename(a_empno number) return varchar2
    is 
        v_ename dept.dname%Type;
    begin
        select ename
            into v_ename
        from emp
        where empno = a_empno;
        return v_ename;
    end;
    
    procedure print_ename(a_empno number)
    is 
    begin
        dbms_output.PUT_LINE(get_ename(a_empno));
    end;
    begin 
    print_ename(7566);
end;