DECLARE
    v_ename emp.ename%TYPE; -- 특정 컬럼의 타입이랑 동일하게 생성
    v_ename2 v_ename%TYPE;  -- 특정 변수의 타입이랑 동일하게 생성 %TYPE      
BEGIN
    SELECT ename INTO v_ename
    FROM EMP
    WHERE ROWNUM =1;
    v_ename2 := v_ename;
end;

DECLARE
    v_emprec emp%ROWTYPE;
    v_emprec2 v_emprec%TYPE;
    CURSOR emp_cursor(a_empno NUMBER) IS 
        SELECT 
        from emp
        where empno = a_empno;
    v_emprec emp_cursor%ROWTYPE;
BEGIN
        SELECT * INTO v_emprec
        from emp
        where rownum =1;
        v_emprec2 :=  v_emprec;
        
        open emp_cursor(7788);
        FERCH emp_cursor into v_emprec3;
        close emp_cursor;
end;