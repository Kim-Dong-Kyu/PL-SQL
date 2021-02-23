declare
    -- 정수를 인덱스로 하는 Associative Array 타입 선언
    type city is table of varchar2(64) index by pls_integer ;
    -- 문자열을 인덱스로 하는 Associative Array 타입 선언
    type population is table of  number  index by varchar2(64);
    v_city city;
    v_Population population;
begin
    v_city (-1) := '서울';
    v_city (0) := '부산';
    v_city (2) := '대전';

    v_Population('서울') := 10373234 ;
    v_Population('부산') := 3812392 ;
    v_Population('대전') := 1390510 ;

    DBMS_OUTPUT.PUT_LINE('도시별 인구');
    DBMS_OUTPUT.PUT_LINE('===========================================');
    DBMS_OUTPUT.PUT_LINE(v_city(-1) || ':' ||
                         to_char(v_Population(v_city(-1)),'999,999,999'));
    DBMS_OUTPUT.PUT_LINE(v_city(-1) || ':' ||
                     to_char(v_Population(v_city(0)),'999,999,999'));
    DBMS_OUTPUT.PUT_LINE(v_city(-1) || ':' ||
                     to_char(v_Population(v_city(2)),'999,999,999'));
end;

------------------------------------------------------------------------------
declare
     type string_array is table of varchar2(100) index by pls_integer ;
     v_arr string_array;
begin
    select ename
        bulk collect  into v_arr
    from emp;
    DBMS_OUTPUT.PUT_LINE('Associative Arrat 컬랙션 개수 :' || v_arr.COUNT);
end;
-- bulk collect 는 sql select 값을 컬랙션에 저장할 수 있음 
 