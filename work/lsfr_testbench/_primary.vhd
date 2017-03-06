library verilog;
use verilog.vl_types.all;
entity lsfr_testbench is
    generic(
        w               : integer := 8;
        CLOCK_PERIOD    : integer := 100;
        k               : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of w : constant is 1;
    attribute mti_svvh_generic_type of CLOCK_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of k : constant is 1;
end lsfr_testbench;
