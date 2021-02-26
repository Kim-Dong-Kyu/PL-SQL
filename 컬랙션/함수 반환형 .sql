

-- 함수 반환형  Associative Array

declare
     type int_array is table of pls_integer index by pls_integer
     bv_fibonacci int_array ;
     c_order constant  pls_integer;

    function fibonacci_seqence(num in pls_integer) return int_array
    is
     v_arr int_array;
    begin
        v_arr(1) := 0;
        v_arr(2) := 1;
        for i in  3 .. num loop
            v_arr(i) := v_arr(i-1) + v_arr(i-2);
        end loop;
        return v_arr;
    end;

 begin
    v_fibonacci  = fibonacci_seqence(c_order);
    DBMS_OUTPUT.PUT_LINE('피보나치 수열의' || c_order || '개항');
    for i in 1.. c_order
    loop
        DBMS_OUTPUT.PUT(case when 1 <i then ',' end || v_fibonacci);
    end loop;
    DBMS_OUTPUT.PUT_LINE('');
end;