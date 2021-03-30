
-- 저장 프로시저
create or replace procedure  raise_salary(a_empno number, a_amt number)
is
begin
    if a_amt is not null
       then
            update emp
                set sal  =sal +a_amt
            where empno = a_empno;
    end if;
end;

-- 프로시저 호출 방법
call RAISE_SALARY(7788,100);
execute RAISE_SALARY(7788,100);
exec RAISE_SALARY(7788,100);
