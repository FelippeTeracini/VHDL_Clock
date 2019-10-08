library IEEE;

use ieee.std_logic_1164.all;

entity registrador is
	generic
	(
		N	: natural  :=	8
	);


	port
	(
		-- Input ports
		clk : in std_logic;
		enable	: in  std_logic;
		reset	: in  std_logic;
		data : in std_logic_vector (N-1 downto 0);

		-- Output ports
		output	: out std_logic_vector (N-1 downto 0)
	);
end registrador;


architecture comportamento of registrador is

	-- Declarations (optional)

begin

	process (clk)
	begin
		-- Reset whenever the reset signal goes low, regardless of the clock
		-- or the clock enable
		if (reset = '1') then
			output <= (OTHERS => '0');
		-- If not resetting, and the clock signal is enabled on this register, 
		-- update the register output on the clock's rising edge
		elsif (rising_edge(clk)) then
			if (enable = '1') then
				output <= data;
			end if;
		end if;
	end process;


end comportamento;


