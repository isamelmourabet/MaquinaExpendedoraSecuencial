library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TC22_FSM is 
	port (
		X : in std_logic_vector (1 downto 0);
		clk : in std_logic;
		rst : in std_logic;
		Z : out std_logic;
		Y : out std_logic_vector (1 downto 0)
	);
end TC22_FSM;


architecture behavior of TC22_FSM is 
type estado is (S0, S1, S2, S3, S4, S5);
signal Q_presente, Q_siguiente : estado; 
begin 
process (clk, Q_presente, rst) 
begin
	if rst = '1' then
		Q_presente <= S0;
	elsif rising_edge (clk) then 
		Q_presente <= Q_siguiente;
	end if;

end process;

    process (Q_presente, X)
    begin
        Q_siguiente <= Q_presente; 
        case Q_presente is 
        when S0 =>
            if X="01" then
                Q_siguiente <= S1; 
	elsif X = "10" then
		Q_siguiente <= S2;
	elsif X = "11" then
		Q_siguiente <= S3;
	elsif X = "00" then
		Q_siguiente <= S0;
            end if;

	Z <= '0';
	Y <= "00";
 
        when S1 =>
            if X="01" then
                Q_siguiente <= S2;
	elsif X = "10" then
		Q_siguiente <= S4;
	elsif X = "11" then
		Q_siguiente <= S5;
	elsif X = "00" then
		Q_siguiente <= S1; 
            end if; 

	Z <= '0';
	Y <= "00";

        when S2 => 
            if X="11" then
                Q_siguiente <= S3;
	elsif X = "10" then
		Q_siguiente <= S2;
	elsif X = "11" then
		Q_siguiente <= S3;
	elsif X = "00" then
		Q_siguiente <= S0; 
            end if; 

	Z <= '1';
	Y <= "00";

	when S3 => 
            if X="11" then
                Q_siguiente <= S1;
	elsif X = "10" then
		Q_siguiente <= S2;
	elsif X = "11" then
		Q_siguiente <= S3;
	elsif X = "00" then
		Q_siguiente <= S0; 
            end if;

	Z <= '1';
	Y <= "01"; 
	
	when S4 => 
            if X="11" then
                Q_siguiente <= S1; 
	elsif X = "10" then
		Q_siguiente <= S2;
	elsif X = "11" then
		Q_siguiente <= S3;
	elsif X = "00" then
		Q_siguiente <= S0; 
            end if; 

	Z <= '1';
	Y <= "10";
	
	when S5 => 
            if X="11" then
                Q_siguiente <= S1; 
	elsif X = "10" then
		Q_siguiente <= S2;
	elsif X = "11" then
		Q_siguiente <= S3;
	elsif X = "00" then
		Q_siguiente <= S0; 
            end if; 

	Z <= '1';
	Y <= "11";

	end case;
        
    end process;

end behavior;
