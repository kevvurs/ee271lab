library verilog;
use verilog.vl_types.all;
entity tow_delegator is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        deviate1        : in     vl_logic;
        deviate2        : in     vl_logic;
        player1         : in     vl_logic;
        player2         : in     vl_logic;
        \out\           : out    vl_logic_vector(2 downto 0)
    );
end tow_delegator;
