create or replace procedure Iftest_proc
is
    v_cnt number;
    v_type STRING(10);
begin
    select count(*)
    into v_cnt
    from USER_TABLES
    where TABLE_NAME ='EMP';

    if v_cnt > 0 then
        DBMS_OUTPUT.PUT_LINE('테이블 emp 가 존재 합니다');
    elsif
        dbms_output.PUT_LINE('테이블 emp가 존재 하지 않습니다');
    else 
        dbms_output.PUT_LINE('테이블 emp는 뭔데?');
    end if;
end;