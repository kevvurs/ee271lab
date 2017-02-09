library verilog;
use verilog.vl_types.all;
entity airport is
    generic(
        alphaPattern    : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        betaPattern     : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        chiPattern      : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        deltaPattern    : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        unkownPattern   : vl_logic_vector(0 to 2) := (HiX, HiX, HiX);
        calm            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        rtl             : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        ltr             : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of alphaPattern : constant is 1;
    attribute mti_svvh_generic_type of betaPattern : constant is 1;
    attribute mti_svvh_generic_type of chiPattern : constant is 1;
    attribute mti_svvh_generic_type of deltaPattern : constant is 1;
    attribute mti_svvh_generic_type of unkownPattern : constant is 1;
    attribute mti_svvh_generic_type of calm : constant is 1;
    attribute mti_svvh_generic_type of rtl : constant is 1;
    attribute mti_svvh_generic_type of ltr : constant is 1;
end airport;
