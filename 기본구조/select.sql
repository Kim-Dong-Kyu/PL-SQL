create or replace procedure fn_SalRate
is
    v_ename emp.ENAME%type; - --EMP 테이블의 타입 복사
    v_empno emp.EMPNO%type;
    v_rate number := 1.1;
    v_sal number;
begin
    v_empno := 7788; -- 조건으로 사용될 변수
        SELECT ename , (sal + comm)*v_rate into v_ename, v_sal
        from emp
        where empno = v_empno ;   -- SQL 문에 PL/SQL Q변수 사용
    DBMS_OUTPUT.PUT_LINE( v_ename);
end;


