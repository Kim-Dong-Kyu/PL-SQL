create or replace package pkg_emp
is
     type emp_type is table of  emp%rowtype;
     c_deptno_accounting constant  number := 10;
     c_deptno_research constant  number := 20;
     c_deptno_sales constant  number := 30;
     c_deptno_operations constant  number := 40;

     v_last_wage number;

     function get_wage(a.empno number) return number;
    procedure
end;.



