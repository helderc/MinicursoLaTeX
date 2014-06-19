-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_counter 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ic2b IS
    PORT(
        clock   : IN STD_LOGIC ;
        q       : OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
END ic2b;

ARCHITECTURE SYN OF ic2b IS
    SIGNAL sub_wire0    : STD_LOGIC_VECTOR (1 DOWNTO 0);

    COMPONENT lpm_counter
    GENERIC (
        lpm_width       : NATURAL;
        lpm_direction   : STRING
    );
    PORT (
        clock   : IN STD_LOGIC ;
        q       : OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
    );
    END COMPONENT;

BEGIN
    q    <= sub_wire0(1 DOWNTO 0);

    lpm_counter_component : lpm_counter
    GENERIC MAP (
        LPM_WIDTH => 2,
        LPM_DIRECTION => "UP"
    )
    PORT MAP (
        clock => clock,
        q => sub_wire0
    );
END SYN;
