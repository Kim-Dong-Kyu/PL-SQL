declare
    v_num number := 0;
begin
    if v_num = 0 then
        goto block_label;
    end if;
end;

begin
    if v_num =0 then
        goto statement_label;
    end if;
    
    <<block_label>>
    v_num := v_num +1;
 end 

 --라벨이라고 안읽고 레이블이라 읽는듯 함 ㅋㅋㅋ 