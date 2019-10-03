library IEEE;

use ieee.std_logic_1164.all;

entity MUX2_1 is
	generic
	(
		N	: integer  :=	2
	);


	port
	(
		-- Input ports
		A	: in  std_logic_vector (N-1 downto 0);
		B	: in  std_logic_vector (N-1 downto 0);
		Sel : in std_logic;

		-- Output ports
		Y	: out std_logic_vector (N-1 downto 0)
	);
end entity;


architecture Arch of MUX2_1 is


begin

	with Sel select Y <=
		A when '0',
		B when '1';

end architecture;

	