create or replace procedure escape_proc
is
 v_num number :=1;
begin
    loop
        DBMS_OUTPUT.PUT_LINE('v_num =' ||v_num);
        v_num := v_num+1;
        exit when v_num >3 ;  -- loop 문 탈축에 가장 적합한 방법
    end loop;
end;

