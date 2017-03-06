library verilog;
use verilog.vl_types.all;
entity dynamicHex is
    generic(
        flash           : vl_logic_vector(0 to 6) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \in\            : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of flash : constant is 1;
end dynamicHex;
