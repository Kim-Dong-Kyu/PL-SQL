declare
    v_cnt pls_integer;
begin
    v_cnt := 0;
    DBMS_OUTPUT.PUT_LINE('---------------�Ϲ� for----------------') ;
    for idx in 1..3
    loop
        v_cnt := v_cnt+1;
        DBMS_OUTPUT.PUT_LINE('����'|| v_cnt) ;   
    end loop;
    DBMS_OUTPUT.PUT_LINE('-----------------------------------');
END;