DECLARE
    v_charset varchar2(16);
    v_name1 varchar2(8 char);
    v_name2 varchar2(8);
BEGIN
    select value into v_charset from V$NLS_PARAMETERS where PARAMETER = 'NLS_CHARACTERSET';
    DBMS_OUTPUT.PUT_LINE('�����ͺ��̽� ���� ����:' || v_charset);
    /*DBMS_OUTPUT.PUT_LINE(CHAR(9));*/

    DBMS_OUTPUT.PUT_LINE('v_name1 VARCHAR2(8 CHAR)');
    DBMS_OUTPUT.PUT_LINE('========================');

    v_name1 := 'Miller';
    DBMS_OUTPUT.PUT_LINE(RPAD(v_name1,9) || lengthb(v_name1) || '����Ʈ');
    v_name1 := '��������';
    DBMS_OUTPUT.PUT_LINE(RPAD(v_name1,9) || lengthb(v_name1) || '����Ʈ') ;
end;