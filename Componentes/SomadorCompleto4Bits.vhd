library IEEE;

use ieee.std_logic_1164.all;

entity SomadorCompleto4Bits is

	port
	(
		-- Input ports
		A	   : in  std_ulogic_vector (3 downto 0);
		B	   : in  std_ulogic_vector (3 downto 0);
		Cin	: in  std_ulogic;

		-- Output ports
		Cout	: out std_ulogic;
		S   	: out std_ulogic_vector (3 downto 0)
	);
end entity;


architecture Soma of SomadorCompleto4Bits is

signal C0_1 : std_ulogic;
signal C1_2 : std_ulogic;
signal C2_3 : std_ulogic;

begin

SomadorCompletoBit0 : entity work.SomadorCompleto
	port map
	(
	-- Input ports
		A => A(0),
		B => B (0),
		Cin => Cin,

		-- Output ports
		Cout => C0_1,
		S => S(0)
	);
	
SomadorCompletoBit1 : entity work.SomadorCompleto
	port map
	(
	-- Input ports
		A => A(1),
		B => B (1),
		Cin => C0_1,

		-- Output ports
		Cout => C1_2,
		S => S(1)
	);

SomadorCompletoBit2 : entity work.SomadorCompleto
	port map
	(
	-- Input ports
		A => A(2),
		B => B (2),
		Cin => C1_2,

		-- Output ports
		Cout => C2_3,
		S => S(2)
	);

SomadorCompletoBit3 : entity work.SomadorCompleto
	port map
	(
	-- Input ports
		A => A(3),
		B => B (3),
		Cin => C2_3,

		-- Output ports
		Cout => Cout,
		S => S(3)
	);

	
end architecture;

	