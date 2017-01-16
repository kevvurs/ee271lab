library verilog;
use verilog.vl_types.all;
entity digit_scan is
    port(
        \OUT\           : out    vl_logic;
        SW1             : in     vl_logic_vector(3 downto 0);
        SW2             : in     vl_logic_vector(3 downto 0)
    );
end digit_scan;
