
-- 레코드를 SQL에서 사용하기 
declare
    type emp_type is record (
        empno number(4) not null := 0,
        ename emp.ename%TYPE,
        job varchar2(9)
        );
    v_emp emp_type;
begin
    v_emp.empno := '9000';
    v_emp.ename := 'hong';
    v_emp.job := 'clerk';
    
    DBMS_OUTPUT.PUT_LINE('empno = '|| v_emp.empno);
    DBMS_OUTPUT.PUT_LINE('ename = '|| v_emp.ename);
    DBMS_OUTPUT.PUT_LINE('job = '|| v_emp.job);
end;

-- c/c++의 구조체 사용과 유사  

-- record를 select 문에서 사용하기
declare
    type emp_type is record(
        empno number(4) not null :=0,
        ename emp.ename%TYPE,
        job varchar2(9)
        );  -- 꼭 매칭되는 테이블의 컬럼명이랑 같을 필요는 없음
    v_emp emp_type;
begin
    select empno, ename, job
      into v_emp
    from emp
    where empno ='7788';

    DBMS_OUTPUT.PUT_LINE('empno = ' || v_emp.empno);
    DBMS_OUTPUT.PUT_LINE('ename = ' || v_emp.ename);
    DBMS_OUTPUT.PUT_LINE('job = ' || v_emp.job);

end;