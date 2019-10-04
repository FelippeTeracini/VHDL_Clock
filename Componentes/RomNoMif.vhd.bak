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
        tmp(0) := x"AA";
        tmp(1) := x"BB";
        tmp(2) := x"CC";
        tmp(3) := x"DD";
        tmp(4) := x"EE";
        tmp(5) := x"FF";
        tmp(6) := x"00";
        tmp(7) := x"11";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;