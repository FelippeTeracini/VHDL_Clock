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
		zero : out std_logic;
	);
	
end ULA;

Architecture comportamento of ULA is

	signal resultado: std_logic_vector(N-1 downto 0);

begin

 process(A,B,instrucao)
 
 begin
  case(instrucao) is
  when "00" => -- Adicao
   resultado <= A + B ; 
  when "01" => -- SaiB
   resultado <= B ;
  when "10" => -- Comparacao   
   if(A=B) then
    zero <= x"01" ;
   else
    zero <= x"00" ;
   end if;
  when others => resultado <= A + B ; 
  end case;
 end process;
 saida <= resultado;
end comportamento;