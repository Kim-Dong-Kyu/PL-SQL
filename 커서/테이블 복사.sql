

--emp 테이블을 emp2 테이블 로 복 복제
create table emp2 as select * from emp where rownum =0;

begin
    for c in (select * from emp)
    loop
        insert into emp2 values c;
    end loop;

end;

select * from emp2