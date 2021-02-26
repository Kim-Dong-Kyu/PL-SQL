
-----------------while Loop-------------------------------
declare
    v_num number := 1;
begin
    while v_num<=3
    loop
        DBMS_OUTPUT.PUT_LINE('루프 내부 :' || v_num);
        v_num  := v_num+1;
    end loop;
    DBMS_OUTPUT.PUT_LINE('루프종료');
end;


-----------------For Loop-------------------------------
declare
    v_cnt pls_integer;
begin
    DBMS_OUTPUT.PUT_LINE('---------------일반 for----------------') ;
    for idx in 1..3
    loop
        DBMS_OUTPUT.PUT_LINE('루프:'|| idx) ;
    end loop;
    DBMS_OUTPUT.PUT_LINE('-----------reverse for----------------') ;
    for idx in  reverse 1..3   -- rever 여도 작은수 큰 수 순으로 작성
    loop     
        DBMS_OUTPUT.PUT_LINE('루프:' || idx);
    end loop;
END;



------------------ continue----------------------------------------
declare
    v_num number :=0;
begin
    loop
        v_num := v_num +1;
        exit when v_num >5;
        if v_num >3 then
            continue;
        end if;
        DBMS_OUTPUT.PUT_LINE('루프 내부:' || v_num);
    end loop;
    DBMS_OUTPUT.PUT_LINE('루프 종료' || v_num);
    DBMS_OUTPUT.PUT_LINE('---------------------------------');
    v_num := 0;
    loop
        v_num  := v_num +1;
        EXIT WHEN v_num >5;
        continue when v_num > 3;
        DBMS_OUTPUT.PUT_LINE('루프 내부:' || v_num);
    end loop;
    DBMS_OUTPUT.PUT_LINE('루프 종료' || v_num);
    DBMS_OUTPUT.PUT_LINE('---------------------------------');

end;

