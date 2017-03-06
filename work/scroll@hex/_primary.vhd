library verilog;
use verilog.vl_types.all;
entity scrollHex is
    generic(
        WIDTH           : integer := 5
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ex              : in     vl_logic;
        left            : in     vl_logic;
        right           : in     vl_logic;
        \buffer\        : in     vl_logic_vector;
        display         : out    vl_logic_vector(4 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end scrollHex;
