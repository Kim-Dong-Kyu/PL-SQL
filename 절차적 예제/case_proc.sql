create or replace procedure caseTest
is
    v_bool boolean :=true;
    v_str STRING(100);
begin
    case v_bool when true then
            v_str := 'v_bool is true';
        when false then
            v_str := 'v_bool is false';
        else
            v_str := 'v_bool is Null';
    end case;
    DBMS_OUTPUT.PUT_LINE(v_str) ;
end;

