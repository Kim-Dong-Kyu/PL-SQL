declare
    v_cnt pls_integer;
begin
    v_cnt := 0;
    DBMS_OUTPUT.PUT_LINE('---------------일반 for----------------') ;
    for idx in 1..3
    loop
        v_cnt := v_cnt+1;
        DBMS_OUTPUT.PUT_LINE('루프'|| v_cnt) ;   
    end loop;
    DBMS_OUTPUT.PUT_LINE('-----------------------------------');
END;