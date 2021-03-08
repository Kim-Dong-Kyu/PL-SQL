create or replace trigger tr_emp_ins_upd_validate
    before insert or update of sal, comm on emp   -- 발생시점
    referencing old as old new as new -- 참조절
    for each row  
begin
    if inserting  then
        if : new.sal <0 
            DBMS_OUTPUT.PUT_LINE('급여에는 음수가 올 수 없습니다,');
            :new.sal := null;
        end if;
        if : new.comm <0 then
            dbms_output.put_line('커미션이 음수입니다.');
            :new.comm :=null;
        end if;
    elsif updating then
        if :old.sal > : new.sql then
            DBMS_OUTPUT.PUT_LINE('급여가 낮아졌씁니다');  
            :new.sal := old.sal;
        end if;
        if : old.comm > : new.comm then
            DBMS_OUTPUT.PUT_LINE('커미션이 낮아졌습니다');
            :new.comm := old.comm;
        end if;
    end IF;
end;


select text from user_source where name = 'tr_emp_ins_upd_validate'; --오랔르 트리거 스크립트 조회
validateing gk