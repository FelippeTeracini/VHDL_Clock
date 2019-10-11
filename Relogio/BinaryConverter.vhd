LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BinaryConverter IS
	PORT (
		-- Entrada de 8 bits --
		binary : IN std_logic_vector(7 downto 0);
		-- Saida de unidade de 4 bits --
		digit0 : OUT std_logic_vector(3 downto 0);
		-- Saida de dezena de 4 bits --
		digit1 : OUT std_logic_vector(3 downto 0)
	);

END BinaryConverter;

ARCHITECTURE comportamento OF BinaryConverter IS

BEGIN
	-- Dezena --
	digit1 <= std_logic_vector(to_unsigned(to_integer(unsigned(binary))/10, 4));
	-- Unidade --
	digit0 <= std_logic_vector(to_unsigned(to_integer(unsigned(binary)) rem 10, 4));

END comportamento;