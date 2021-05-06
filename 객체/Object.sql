CREATE OR REPLACE  TYPE person_type AS OBJECT(
    family_name varchar2(30),
    given_name varchar2(30),
    address_1 varchar2(60),
    address_2 varchar2(30)
) ;
-- 일반 객체지향 언언의 클래스 선언 과 같이 객체 타입과 속성을 정의한다.
