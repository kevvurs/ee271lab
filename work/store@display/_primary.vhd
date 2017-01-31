library verilog;
use verilog.vl_types.all;
entity storeDisplay is
    port(
        DU0             : out    vl_logic_vector(6 downto 0);
        DU1             : out    vl_logic_vector(6 downto 0);
        DU2             : out    vl_logic_vector(6 downto 0);
        DU3             : out    vl_logic_vector(6 downto 0);
        DU4             : out    vl_logic_vector(6 downto 0);
        DU5             : out    vl_logic_vector(6 downto 0);
        UPC             : in     vl_logic_vector(2 downto 0)
    );
end storeDisplay;
