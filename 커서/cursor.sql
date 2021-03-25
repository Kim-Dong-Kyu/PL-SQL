-- 명시적 cursor 예제

declare
    v_name emp.ename%Type;

    cursor ename_cursor is -- DECLARE 절 커서 명시
        select ename
        from emp
        where empno = 7788;  -- 커서를 지정하다
begin
    open ename_cursor;  -- 커서 오픈

    fetch ename_cursor -- 커시 실행 block
     into v_name;
    Dbms_output.PUT_LINE('ename =' || v_name);

    close ename_cursor; -- 커서 닫기
end;

-- Loop를 이용한 콧 cursor
DECLARE
     v_empno number;
     v_ename  emp.ename%type;
    
    cursor ename_cursor is 
    select empno, ename
     from emp
    order by empno; 
BEGIN
    OPEN ename_cursor;
    
    loop
        fetch ename_cursor into v_empno, v_ename; 
        exit when ename_cursor%notfound;
        DBMS_OUTPUT.PUT_LINE('empno' || v_empno || 'ename= '||v_ename);
    end loop;
    
    close ename_cursor;
END;


-- 명시적 커서에서 bulk collect into 사용
declare
    type empno_arr is table of number;
    type ename_arr is table of emp.ename%TYPE;

    v_empno empno_arr;
    v_ename ename_arr;

    cursor ename_cursor is
     select empno, ename
         from emp;
begin
    open ename_cursor;

    fetch ename_cursor
     bulk collect into v_empno, v_ename;

    dbms_output.PUT_LINE('사원수 = ' || v_empno.count);

    close ename_cursor;

end;