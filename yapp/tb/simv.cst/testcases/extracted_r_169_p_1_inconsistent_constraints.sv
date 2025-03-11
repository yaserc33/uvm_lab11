class c_169_1;
    int i = 22;
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

program p_169_1;
    c_169_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x111xz11x0z1010x0x01xz1x1x1z0zxxzxzxxxxzxzzzzxxzxzxzzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
