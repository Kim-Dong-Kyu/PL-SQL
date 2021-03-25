DECLARE
    v_name emp.ename%TYPE;
begin
---------<-- 묵시적 커서 수행
    select ename
     into v_name
    from emp
    where empno = '7788';

    DBMS_OUTPUT.PUT_LINE('ENAME = '|| v_name);
end;