library IEEE;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity tristate is
	generic (N : natural := 1);

	port
	(
		-- Input ports
		input	   : in  std_logic_vector (N-1 downto 0);
		enable	: in  std_logic;

		-- Output ports
		output	: out std_logic_vector (N-1 downto 0)
	);
end entity;


architecture Arch of tristate is


begin

	with enable select output <=
		(others => 'Z') when '0',
		input when '1';

end architecture;

	