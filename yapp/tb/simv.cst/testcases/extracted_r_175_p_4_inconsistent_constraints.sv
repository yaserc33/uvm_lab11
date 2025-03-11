class c_175_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_175_4;
    c_175_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx0zz10x01z11z00zzzxz0zxxz01zxxzzxzxzzxzzxzxzzxzxzxzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
