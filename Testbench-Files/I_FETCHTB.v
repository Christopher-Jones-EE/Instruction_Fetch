module I_FETCHTB();

    reg clk_tb, rst_tb;

    reg EX_MEM_PCSrc_tb;

    reg [31:0] EX_MEM_NPC_tb;

    wire [31:0] IF_ID_instr_tb;

    wire [31:0] IF_ID_npc_tb;

     fetch DUT(

        .clk(clk_tb),
        
        .rst(rst_tb),

        .if_id_instr(IF_ID_instr_tb),

        .if_id_npc(IF_ID_npc_tb),

        .ex_mem_pc_src(EX_MEM_PCSrc_tb),

        .ex_mem_pc(EX_MEM_NPC_tb)

     );

    initial clk_tb <= 0;

    always #1 clk_tb <= ~clk_tb;

    initial begin
    
       rst_tb = 1;
        
       EX_MEM_PCSrc_tb <= 0;

       EX_MEM_NPC_tb <= 32'hFFFFFFFF;

       #4 rst_tb = 0;
        
       #16; 

       EX_MEM_NPC_tb <= 32'h00000000;

       EX_MEM_PCSrc_tb <= 1;

      #50;

      EX_MEM_PCSrc_tb <= 0;

      #20;

      $finish;

    end

endmodule