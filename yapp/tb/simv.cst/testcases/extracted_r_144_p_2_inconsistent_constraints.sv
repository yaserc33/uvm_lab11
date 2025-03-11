class c_144_2;
    int i = 16;
    rand bit[5:0] length; // rand_mode = ON 

    constraint length2_this    // (constraint_mode = ON) (../sv/yapp_packet.sv:78)
    {
       (length < 6'hf);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (length == i);
    }
endclass

program p_144_2;
    c_144_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0zz111x10xz01xz00xz00x0zzzx00xzxxxxxxxxxzxzzxzzzxxxzxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
