library verilog;
use verilog.vl_types.all;
entity safeEval is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        go              : in     vl_logic;
        expected        : in     vl_logic_vector(7 downto 0);
        actual          : in     vl_logic_vector(7 downto 0);
        correct         : out    vl_logic_vector(1 downto 0);
        misplaced       : out    vl_logic_vector(1 downto 0)
    );
end safeEval;
