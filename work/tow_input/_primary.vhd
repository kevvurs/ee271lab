library verilog;
use verilog.vl_types.all;
entity tow_input is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \in\            : in     vl_logic;
        \out\           : out    vl_logic
    );
end tow_input;
