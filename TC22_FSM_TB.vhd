library ieee;
use ieee.std_logic_1164.all;

entity TC22_FSM_TB is  
	
end TC22_FSM_TB;

architecture behave of FSM_TB is
  signal clk: std_logic; 
  signal rst: std_logic; 	
  signal Z: std_logic; 
  signal X: std_logic_vector(1 downto 0);
  signal Y: std_logic_vector(1 downto 0);
	
  component TC22_FSM is 
    port (
    X : in std_logic_vector (1 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    Z : out std_logic;
    Y : out std_logic_vector (1 downto 0) 
  );

  end component TC22_FSM;

begin

  INST_FSM : FSM 
    port map (
      X => X, 	
      Z => Z, 
      clk => clk, 
      rst => rst,
      Y => Y  
  );

init : process
    begin
	clk <= '0';
    wait for 5 ns;
	clk <= '1';
    wait for 5 ns;
end process init;

always : process
    begin	
	rst <= '1';
    wait for 20 ns;
	
	rst <= '0';
	X <= "01";
    wait for 10 ns;
	
	X <= "01";
    wait for 10 ns;
	
	X <= "00";
    wait for 10 ns;
	
	X <= "10";
    wait for 10 ns;
	
	X <= "11";
    wait for 10 ns;
	
	X <= "00";
    wait for 10 ns;

	X <= "01";
    wait for 10 ns;

	X <= "10";
    wait for 10 ns;

	X <= "00";
    wait for 50 ns;

wait;
end process always;

end behave;

