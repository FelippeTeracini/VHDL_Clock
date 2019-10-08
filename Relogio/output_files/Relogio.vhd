-- Quartus Prime VHDL Template
-- Configurable names for ports of a binary counter

library ieee;
use ieee.std_logic_1164.all;
entity Relogio is
  port (
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0);
	 KEY: IN STD_LOGIC_VECTOR(3 downto 0)
  );
end entity;

architecture rtl of Relogio is
	  
begin

	display7 : entity work.conversorHex7seg
    Port map (saida7seg => HEX7, dadoHex => NOT KEY, apaga => '0', overFlow => '0', negativo => '0');
	 
	 display6 : entity work.conversorHex7seg
    Port map (saida7seg => HEX6, dadoHex => KEY, apaga => '1', overFlow => '0', negativo => '0');
	 
	 display5 : entity work.conversorHex7seg
    Port map (saida7seg => HEX5, dadoHex => KEY, apaga => '1', overFlow => '0', negativo => '0');
	 
	 display4 : entity work.conversorHex7seg
    Port map (saida7seg => HEX4, dadoHex => KEY, apaga => '1', overFlow => '0', negativo => '0');
	 
	 display3 : entity work.conversorHex7seg
    Port map (saida7seg => HEX3, dadoHex => KEY, apaga => '1', overFlow => '0', negativo => '0');
	 
	 display2 : entity work.conversorHex7seg
    Port map (saida7seg => HEX2, dadoHex => KEY, apaga => '1', overFlow => '0', negativo => '0');
	 
	 display1 : entity work.conversorHex7seg
    Port map (saida7seg => HEX1, dadoHex => KEY, apaga => '1', overFlow => '0', negativo => '0');
	 
	 display0 : entity work.conversorHex7seg
    Port map (saida7seg => HEX0, dadoHex => KEY, apaga => '1', overFlow => '0', negativo => '0');

end rtl;


