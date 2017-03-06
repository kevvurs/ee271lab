library verilog;
use verilog.vl_types.all;
entity lsfr is
    generic(
        WIDTH           : integer := 10;
        x1              : integer := 7;
        x2              : integer := 5;
        x3              : integer := 4;
        x4              : integer := 3
    );
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic;
        reset           : in     vl_logic;
        \out\           : out    vl_logic;
        q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of x1 : constant is 1;
    attribute mti_svvh_generic_type of x2 : constant is 1;
    attribute mti_svvh_generic_type of x3 : constant is 1;
    attribute mti_svvh_generic_type of x4 : constant is 1;
end lsfr;
