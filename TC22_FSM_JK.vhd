LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity TC22_FSM_JK is 
	port (
		X1 : in std_logic;
		X0: in std_logic;
		clk : in std_logic;
		rst : in std_logic;
		Z: out std_logic;
		Y : out std_logic_vector (1 downto 0)
);

end TC22_FSM_JK;

architecture behaviour of TC22_FSM_JK is

	signal EA0, EA1 : std_logic; 
	signal PE0, PE1 : std_logic;

	component TC22_salida is 
		port (
			X1: in std_logic;
			X0: in std_logic;
			Q2: in std_logic;
			Q1: in std_logic;
			Q0: in std_logic;
			Z: out std_logic_vector;
			Y: out std_logic_vector (1 downto 0)
		);
	end component TC22_salida;

	component TC22_transicion_JK is 
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
	end component TC22_transicion_JK;

	component TC22_ffJK is 
		port (
			J : in std_logic;
			K : in std_logic;
			CLOCK : in std_logic;
			RST : in std_logic;
			Q: out std_logic
		);
	end component TC22_ffJK;

begin
	FFJK2 : TC22_ffJK port map(...);
	FFJK1 : TC22_ffJK port map(...);
	FFJK0 : TC22_ffJK port map(...);
	bloque_salida : TC22_salida port map(...);
	bloque_cambio : TC22_transicion_JK port map(...);

end behaviour;
