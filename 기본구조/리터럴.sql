DECLARE 
 v_sum NUMBER := 0;
BEGIN
    for i in 1..10
    loop
     v_sum := v_sum +i;
    end loop;
    DBMS_OUTPUT.PUT_LINE('1���� 10 ������ �� :' || v_sum);
end;