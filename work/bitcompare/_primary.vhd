library verilog;
use verilog.vl_types.all;
entity bitcompare is
    generic(
        WIDTH           : integer := 10
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        \out\           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end bitcompare;
