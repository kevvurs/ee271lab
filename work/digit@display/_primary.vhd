library verilog;
use verilog.vl_types.all;
entity digitDisplay is
    port(
        DISP0           : out    vl_logic_vector(6 downto 0);
        DISP1           : out    vl_logic_vector(6 downto 0);
        CTRL0           : in     vl_logic_vector(3 downto 0);
        CTRL1           : in     vl_logic_vector(3 downto 0)
    );
end digitDisplay;
