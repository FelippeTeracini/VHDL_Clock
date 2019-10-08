library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
	generic(
		N: INTEGER := 8
	);
	port(
		--- IN ---
		A : in std_logic_vector(N-1 downto 0);
		B : in std_logic_vector(N-1 downto 0);
		instrucao : in std_logic_vector(1 downto 0);
		
		--- OUT ---
		saida : out std_logic_vector(N-1 downto 0);
		zero : out std_logic_vector(0 downto 0)
	);
	
end ULA;

Architecture comportamento of ULA is

	signal resultado: integer;
	signal ai : integer;
	signal bi : integer;

begin

 process(A,B,instrucao)
 
 begin
	ai <= to_integer(unsigned(A));
	bi <= to_integer(unsigned(B));
 
  case(instrucao) is
  when "00" => -- Adicao
   resultado <= ai + bi ; 
  when "01" => -- SaiB
   resultado <= bi ;
  when "10" => -- Comparacao   
   if(ai = bi) then
    zero(0) <= '0';
   else
    zero(0) <= '1' ;
   end if;
  when others => resultado <= 0	 ; 
  end case;
 end process;
 saida <= std_logic_vector(to_unsigned(resultado, saida'length));
end comportamento;