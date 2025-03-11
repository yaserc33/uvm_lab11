class c_162_1;
    int i = 20;
    rand bit[5:0] length; // rand_mode = ON 

    constraint length2_this    // (constraint_mode = ON) (../sv/yapp_packet.sv:78)
    {
       (length < 6'hf);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (length == i);
    }
endclass

program p_162_1;
    c_162_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11010x0xxx001x0z01011x0xxz11x0xzzxzxzxzzzxzxzzzxxxzxxxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
