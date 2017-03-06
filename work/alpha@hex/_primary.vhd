library verilog;
use verilog.vl_types.all;
entity alphaHex is
    port(
        \in\            : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(6 downto 0)
    );
end alphaHex;
