
-- 패키지 명세

create or replace package pkg_emp2
is
  function emp_dept_name(a_empno number) return varchar2;
  function emp_dept_name(a_empno varchar2) return  varchar2;
end;

-- 패키지 본체

create package body PKG_EMP2
is
    function emp_dept_name(a_empno number) return varchar2   -- 매개변수가 number일 떄
    is
     v_dname dept.DNAME%type;
    begin
        select dname
            into v_dname
        from emp e , dept d
        where e.DEPTNO = d.DEPTNO
         and e.empno = a_empno;
    end;

    function emp_dept_name(e_name varchar2) return varchar2 -- 매개변수가 varchar 일떄
    is
        v_dname dept.dname%Type;
    begin
        select dname
            into v_dname
        from emp e, dept d
        where e.DEPTNO =d.DEPTNO
           and e.ENAME = e.ENAME;
        return v_dname;
    end;
end;
/

