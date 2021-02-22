create or replace procedure fn_InsertEmp
is
  v_empno EMP.EMPNO%TYPE;
  v_ename EMP.ENAME%TYPE;
  v_deptno EMP.DEPTNO%TYPE;
begin
    v_empno := 9000;
    v_ename:= '홍길동';
    v_deptno := 30;

    insert into emp (empno, ename , hiredate, DEPTNO)
    values  (v_empno, v_ename, sysdate , v_deptno);
    DBMS_OUTPUT.PUT_LINE('insert  건수 :' || SQL%rowcount);
    commit;
end;


