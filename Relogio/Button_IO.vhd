LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity Button_IO is
   port(
      KEY          :   in std_logic_vector(3 downto 0);
		
		RD_ButMin    :   in std_logic;
		RESET_ButMin :   in std_logic;
		RD_ButHrs    :   in std_logic;
		RESET_ButHrs :   in std_logic;
		
      output       :   out std_logic
   );
end entity;

architecture comportamento of Button_IO is

	signal regMinOut, regHrsOut : std_logic;

begin
		
	RegMin : entity work.registrador
		generic map (N => 1)
		port map (
			clk => KEY(0),
			enable => '1',
			reset	=> RESET_ButMin,
			data(0) => '1',

			output(0) => regMinOut
		);
		
	RegHrs : entity work.registrador
		generic map (N => 1)
		port map (
			clk => KEY(1),
			enable => '1',
			reset	=> RESET_ButHrs,
			data(0) => '1',

			output(0) => regHrsOut
		);	
		
	triStateMin : entity work.tristate
		port map (
			input(0) => regMinOut,
			enable => RD_ButMin,
			output(0) => output
		);
		
	triStateHrs : entity work.tristate
		port map (
			input(0) => regHrsOut,
			enable => RD_ButHrs,
			output(0) => output
		);


	

end architecture;