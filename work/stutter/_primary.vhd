library verilog;
use verilog.vl_types.all;
entity stutter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        cy              : out    vl_logic
    );
end stutter;
