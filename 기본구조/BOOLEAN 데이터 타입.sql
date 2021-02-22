CREATE OR REPLACE  FUNCTION  boolean_string(a_bolean BOOLEAN) RETURN VARCHAR2
IS
BEGIN
    RETURN CASE WHEN a_bolean = TRUE THEN 'TRUE'
                WHEN a_bolean = FALSE THEN 'FALSE'
                WHEN a_bolean is null then 'NULL'
            end;
end;

begin
    DBMS_OUTPUT.PUT_LINE('TRUE : ' || boolean_string(TRUE));
    DBMS_OUTPUT.PUT_LINE('FALSE : ' || boolean_string(FALSE));
    DBMS_OUTPUT.PUT_LINE('NULL : ' || boolean_string(NULL));
    DBMS_OUTPUT.PUT_LINE('1 =1 ? : ' || boolean_string(1=1));
    DBMS_OUTPUT.PUT_LINE('1 = 2 ? : ' || boolean_string(1=2));
end;
