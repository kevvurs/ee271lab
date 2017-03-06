library verilog;
use verilog.vl_types.all;
entity keyHandle is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \in\            : in     vl_logic;
        \out\           : out    vl_logic
    );
end keyHandle;
