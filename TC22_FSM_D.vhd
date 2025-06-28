LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity TC22_FSM_D is 
	port (
		X1 : in std_logic;
		X0: in std_logic;
		Q2: in std_logic;
		Q1: in std_logic;
		Q0: in std_logic;
		D2 : in std_logic;
		D1 : in std_logic;
		D0 : in std_logic;
		clk : in std_logic;
		rst : in std_logic;
		Z: out std_logic;
		Y : out std_logic_vector (1 downto 0) 
);
end TC22_FSM_D;

architecture behaviour of TC22_FSM_D is

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

	component TC22_transicion_D is 
		port (...);
	end component TC22_transicion_D;

	component TC22_ffD is 
		port (...);
	end component TC22_ffD;

begin
	FFD2 : TC22_ffD port map(...);
	FFD1 : TC22_ffD port map(...);
	FFD0 : TC22_ffD port map(...);
	bloque_salida : TC22_salida port map(...);
	bloque_cambio : TC22_transicion_D port map(...);

end behaviour;
