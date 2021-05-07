CREATE OR REPLACE  TYPE person_type AS OBJECT(
    family_name varchar2(30),
    given_name varchar2(30),
    address_1 varchar2(60),
    address_2 varchar2(30),

    MEMBER function full_name return varchar2,
    MEMBER function mailing_address return varchar2,
    MEMBER procedure set_name(famil_name varchar2,given_name varchar2)
    --MEMBER 키워드를 통해 일반 메소드를 기입 할 수 있으며 프로시저도 맴버 메소드 선언이 가능하다

) ;
-- 일반 객체지향 언언의 클래스 선언 과 같이 객체 타입과 속성을 정의한다.
