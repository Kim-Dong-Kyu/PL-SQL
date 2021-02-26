declare
     type languages is varray(10) of varchar(64); -- varry 선언
     v_lang languages;
     v_lang2 languages := languages('한국어', '중국어', '영어');
begin
    v_lang := languages();
    v_lang := languages('한국어');
    v_lang := languages('한국어', '중국어');

    v_lang.extend(2);  -- 배열 확장 메소드 
    v_lang(3) := '일본어';
    v_lang(4) :=  '영어';

    DBMS_OUTPUT.PUT_LINE('언어 목록' );
    dbms_output.PUT_LINE('=============');
    for i in v_lang.First .. v_lang.LAST
    loop
        DBMS_OUTPUT.PUT_LINE(to_char(i)|| ':' || v_lang(i));
    end loop;
end;

--varray bulk collect (select 결과를 varray로 대입)
declare
    type string_array is varray(20) of varchar2(100);
    v_arr string_array;
begin
    select ename bulk collect  into v_arr --v_arr 변수에 쿼리 결과 삽입
    from emp
    where rownum <= 20;
    DBMS_OUTPUT.PUT_LINE('varry count :' || v_arr.COUNT);
end;

-- 컬렉션 생성자 함수
declare
    type string_array is table of varchar2(100);
    v_arr1 string_array := string_array();
    v_arr2 string_array ;
begin
    v_arr2 := string_array('수박', '사과','망고', '배' );
    dbms_output.PUT_LINE(v_arr1.count);
    dbms_output.PUT_LINE(v_arr2.count);

end;
