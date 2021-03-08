CREATE OR REPLACE TRIGGER tr_a
    BEFORE UPDATE ON emp for each row
    begin
        /* 트리거 내용*/
    end;

CREATE OR REPLACE TRIGGER tr_b
    BEFORE UPDATE ON emp FOR EACH ROW FOLLOWS tr_a -- 트리거 tr_b 는 tr_a 보다 먼저 수행
begin
    /*x트리거 내용*/
end;