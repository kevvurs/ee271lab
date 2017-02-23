library verilog;
use verilog.vl_types.all;
entity tow_count is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \in\            : in     vl_logic;
        display         : out    vl_logic_vector(3 downto 0)
    );
end tow_count;
