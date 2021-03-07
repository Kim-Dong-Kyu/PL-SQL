create or replace package body PKG_EMP
is
  --==========전용상수 선언 ===============
  c_null_commission constant number := 10;
  c_failed_return_wage constant number := -1;

  --==========전용커서 선언 =============== 
  cursor  emp_cursor(a_empno number) is
      select sal+nvl(comm, c_null_commission) comm
      from emp
      where empno = a_empno ;

 --==========공용 서브프로그램 정의 ===============
  function get_wage(a_empno number) return number
  is
      begin
          for rec in emp_cursor(a_empno)
          loop
            v_last_wage := rec.comm;
            return rec.comm;
          end loop;
          return c_failed_return_wage;
      end;
   procedure  raise_bounce(a_empno number, a_amt number)
   is
       v_ename emp.ename%TYPE;
    begin
        begin
            select ENAME
            into v_ename
            from emp
            where empno = a_empno;
        exception
        when no_data_found then
        return;
        end;
        if a_amt is not null
           then
            merge into bonus
                using dual
                    on(bonus.ename =v_ename)
                when matched then
                    update set comm =comm +a_amt
                when not matched then
                    insert (ename, comm)
                    values (v_ename, a_amt);
        end if ;
    end;
--==========패키지 초기화부 ===============    
begin
    v_last_wage :=1;
end;