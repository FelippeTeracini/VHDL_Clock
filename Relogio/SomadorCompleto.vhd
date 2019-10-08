library IEEE;

use ieee.std_logic_1164.all;

entity SomadorCompleto is

	port
	(
		-- Input ports
		A	   : in  std_ulogic;
		B	   : in  std_ulogic;
		Cin	: in  std_ulogic;

		-- Output ports
		Cout	: out std_ulogic;
		S   	: out std_ulogic
	);
end entity;


architecture Soma of SomadorCompleto is

begin

	S <= A xor B xor Cin;
	Cout <= (A and B) or (A and Cin) or (B and Cin);
	
end architecture;

	