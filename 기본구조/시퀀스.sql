declare
    v_seq_value number;
begin
    select emp_seq.NEXTVAL
        INTO v_seq_value
    from dual;
    DBMS_OUTPUT.PUT_LINE('시퀀스 값 :'|| to_char(v_seq_valuev));
end;