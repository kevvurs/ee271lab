library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        STL             : out    vl_logic;
        DISC            : out    vl_logic;
        M               : in     vl_logic;
        U               : in     vl_logic;
        P               : in     vl_logic;
        C               : in     vl_logic
    );
end \register\;
