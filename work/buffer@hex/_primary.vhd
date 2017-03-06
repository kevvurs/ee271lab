library verilog;
use verilog.vl_types.all;
entity bufferHex is
    generic(
        WIDTH           : integer := 5
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \in\            : in     vl_logic_vector(4 downto 0);
        ex              : in     vl_logic;
        \buffer\        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end bufferHex;
