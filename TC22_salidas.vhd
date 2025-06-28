library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TC22_salidas is 
	port (
		X1: in std_logic;
		X0: in std_logic;
		Q2: in std_logic;
		Q1: in std_logic;
		Q0: in std_logic;
		Z: out std_logic;
		Y: out std_logic_vector (1 downto 0)
	);

end TC22_salidas;

architecture behaviour of TC22_salidas is
	signal not_Q2: std_logic;
	signal not_Q1: std_logic;
	signal not_Q0: std_logic;

begin
	not_Q2 <= not Q2;
	not_Q1 <= not Q1;
	not_Q0 <= not Q0;
	
	Z <= (X0 and not_Q2 and not_Q1 and Q0) or X1;
	Y(1) <= X1 and not_Q2 and not_Q1 and Q0;
	Y(0) <= X1 and X0;

end behaviour;