library verilog;
use verilog.vl_types.all;
entity tow_score is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        idle            : in     vl_logic_vector(1 downto 0);
        increment       : in     vl_logic;
        vulnerable      : out    vl_logic;
        pattern         : out    vl_logic_vector(3 downto 0);
        win             : out    vl_logic
    );
end tow_score;
