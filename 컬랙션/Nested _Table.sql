DECLARE
    TYPE city IS TABLE OF VARCHAR2(64);   -- Nested Table 선언
    v_city city;
    v_city2 city :=  city('서울','대전','부산');
BEGIN
    v_city := city('서울','대전','부산','광주','인천');
    
    v_city :=city(); -- 초기화
    
    v_city.extend; v_city(1) := '서울'; --Nested Table 값 추가
    v_city.extend; v_city(1) := '대전';
    v_city.extend; v_city(1) := '부산';
    v_city.extend; v_city(1) := '대구';
    DBMS_OUTPUT.PUT_LINE('도시개수 :'||v_city.COUNT||'개' );
    
    for i in v_city.FIRST .. v_city.LAST
    loop
        if v_city.EXISTS(i) then
            DBMS_OUTPUT.PUT_LINE(v_city(i));
        end if;
     end loop;
    
    v_city.delete(3);   -- 3번째 항목을 삭제 
   BMS_OUTPUT.PUT_LINE('도시개수 :'||v_city.COUNT||'개' );
    
    for i in v_city.first .. v_city.LAST
    loop
        if v_city.EXISTS(i) then
            DBMS_OUTPUT.PUT_LINE(v_city(i));
        end if;
    end loop;  -- 삭제된 3번쨰 항목은 출력이 되지 않는다 
    
    
    
    
    
    
    
    
    
    
    
    
    
END;