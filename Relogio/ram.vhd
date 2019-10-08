LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram IS
	GENERIC
	(
		ADDRESS_WIDTH	: integer := 10;
		DATA_WIDTH	: integer := 8
	);
	PORT
	(
		clock			: IN  std_logic;
		data			: IN  std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
		address		: IN  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
		CS          : IN  std_logic; 
		we			: IN  std_logic;
		q			: OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
	);
END ram;

ARCHITECTURE rtl OF ram IS
	TYPE RAM IS ARRAY(0 TO 2 ** ADDRESS_WIDTH - 1) OF std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL endereco : std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
	SIGNAL ram_block : RAM;
BEGIN
	PROCESS (clock, CS)
	BEGIN
		IF (CS = '1') THEN
		
		elsif (clock'event AND clock = '1') THEN
				IF (we = '1') THEN
					 ram_block(to_integer(unsigned(address))) <= data;
				END IF;
				endereco <= address;
		END IF;
		q <= ram_block(to_integer(unsigned(endereco)));
			
--		ELSE
--			q <= (OTHERS => 'Z');
--		END IF;
		
	END PROCESS;
	
END rtl;
