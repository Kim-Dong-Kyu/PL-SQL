create procedure MergeEmp_proc
is
begin
    merge into emp
    using dual
        on(empno = 9000)
    when matched then
      update
        set comm = comm*1.1
    when not matched then
      insert(empno, ENAME, JOB, HIREDATE, SAL, DEPTNO)
      values (9000,'홍길동,', 'CLERK', SYSDATE , 3000, 10);
    DBMS_OUTPUT.PUT_LINE('Merge 건수 :' || SQL%ROWCOUNT);
    COMMIT;
end;

