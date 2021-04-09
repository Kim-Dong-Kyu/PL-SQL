create or replace package pkg_emp
is
    -- 공용 타입 선언
     type emp_type is table of  emp%rowtype;
    -- 공용 상수 선언
     c_deptno_accounting constant  number := 10;
     c_deptno_research constant  number := 20;
     c_deptno_sales constant  number := 30;
     c_deptno_operations constant  number := 40;

     v_last_wage number;   --변수 선언
     
     --공용서브프로그램 선언
     function get_wage(a.empno number) return number;
     procedure raise_bounce(a_empno number, a_amt number);
end;-- 패키지 명세에서는 end 는 있어야 하지만  begin이 없다



