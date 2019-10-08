LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BinaryConverter IS
	PORT (
		binary : IN std_logic_vector(7 downto 0);
		digit0 : OUT std_logic_vector(3 downto 0);
		digit1 : OUT std_logic_vector(3 downto 0)
	);

END BinaryConverter;

ARCHITECTURE comportamento OF BinaryConverter IS

BEGIN

	digit1 <= std_logic_vector(to_unsigned(to_integer(unsigned(binary))/10, 4));
	digit0 <= std_logic_vector(to_unsigned(to_integer(unsigned(binary)) rem 10, 4));

END comportamento;