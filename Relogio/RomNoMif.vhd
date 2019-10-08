library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity RomNoMif is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of RomNoMif is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(0) := "11111111111111";
        tmp(1) := "11111111111111";
        tmp(2) := "11111111111111";
        tmp(3) := "11111111111111";
        tmp(4) := "11111111111111";
        tmp(5) := "11111111111111";
        tmp(6) := "11111111111111";
        tmp(7) := "11111111111111";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;