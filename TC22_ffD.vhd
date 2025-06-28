library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TC22_ffD is 
	port (
		D : in std_logic;
		clk : in std_logic;
		rst : in std_logic;
		Q : out std_logic
	);
end TC22_ffD;


architecture behavioral of TC22_ffD is 
begin process (clk) begin
	if (rising_edge (clk)) then
		if (rst = '1') then
			Q <= '0';
		else
			Q <= D;
		end if;
	end if;

end process;
end behavioral;