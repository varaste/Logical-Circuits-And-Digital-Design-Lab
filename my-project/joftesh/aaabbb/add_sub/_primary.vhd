library verilog;
use verilog.vl_types.all;
entity add_sub is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        sout            : out    vl_logic_vector(3 downto 0)
    );
end add_sub;
