library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TC22_ffJK is
	port (
		J : in std_logic;
		K : in std_logic;
		CLOCK : in std_logic;
		RST : in std_logic;
		Q: out std_logic
	);

end TC22_ffJK;

architecture behavioral of TC22_ffJK is
signal tmp : std_logic;

	begin
	process (CLOCK) begin
		if (rising_edge (CLOCK)) then
			if (RST='1') then
				TMP <= '0';
			elsif (J='0' and K='0') then
				TMP <= TMP;
			elsif (J='0' and K='1') then
				TMP <= '0';
			elsif (J='1' and K='0') then
				TMP <='1';
			elsif (J='1' and K='1') then
				TMP <= not TMP;
			end if;
		end if;	
	end process;
	Q <= TMP;
end behavioral;
