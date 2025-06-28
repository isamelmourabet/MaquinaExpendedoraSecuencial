library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TC22_transicion_JK is 
	port (
		X1: in std_logic;
		X0: in std_logic;
		Q2: in std_logic;
		Q1: in std_logic;
		Q0: in std_logic;
		J2: out std_logic;
		J1: out std_logic;
		J0: out std_logic;
		K2: out std_logic;
		K1: out std_logic;
		K0: out std_logic
	);

end TC22_transicion_JK;

architecture behaviour of TC22_transicion_JK is
	signal not_Q2: std_logic;
	signal not_Q1: std_logic;
	signal not_Q0: std_logic;
	signal not_X1: std_logic;
	signal not_X0: std_logic;

begin
	not_Q2 <= not Q2;
	not_Q1 <= not Q1;
	not_Q0 <= not Q0;
	not_X1 <= not X1;
	not_X0 <= not X0;
	
	J2 <= X1 and not_Q1 and Q0;
	J1 <= (not_X1 and X0 and not_Q2 and Q0) or (X1 and not_Q0) or (X1 and Q2);
	J0 <= X0;
	K2 <= '1';
	K1 <= not_X1;
	K0 <= (not_X1 and X0 and not_Q2 and not_Q1) or (not_X0 and Q1) or (not_X0 and Q2) or (X1 and not_X0);

end behaviour;
