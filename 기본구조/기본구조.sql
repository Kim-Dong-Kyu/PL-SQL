DECLARE 
 v_str VARCHAR2(100);   -- 선언부 
BEGIN  -- 시작
	v_str := 'Hello world';
    DBMS_OUTPUT.PUT_LINE(v_str);
EXCEPTION WHEN OTHERS THEN  -- 예외처리
 	DBMS_OUTPUT.PUT(SQLERRM);
END; -- end 






