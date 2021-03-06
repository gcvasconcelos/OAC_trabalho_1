library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MIPS_Mux4x1_ESCOLHER_SAIDA_7SEG is
    Port ( 
--			  Saida_PC : in  STD_LOGIC_VECTOR (31 downto 0);
--           Saida_RI : in  STD_LOGIC_VECTOR (31 downto 0);
--			  Saida_SaidaALU : in  STD_LOGIC_VECTOR (31 downto 0);
--			  Saida_RDM: in  STD_LOGIC_VECTOR (31 downto 0);			  
--           Seletor_Saida : in  STD_LOGIC_vector(1 downto 0);
			  
			  data  	: in std_logic_vector(31 downto 0);
			  
           Saida_Primeiro_7seg : out STD_LOGIC_VECTOR(7 downto 0);
			  Saida_Segundo_7seg : out STD_LOGIC_VECTOR(7 downto 0);
			  Saida_Terceiro_7seg : out STD_LOGIC_VECTOR(7 downto 0);
			  Saida_Quarto_7seg : out STD_LOGIC_VECTOR(7 downto 0);
			  Saida_Quinto_7seg : out STD_LOGIC_VECTOR(7 downto 0);
			  Saida_Sexta_7seg : out STD_LOGIC_VECTOR(7 downto 0);
			  Saida_Setimo_7seg : out STD_LOGIC_VECTOR(7 downto 0);
			  Saida_Oitavo_7seg : out STD_LOGIC_VECTOR(7 downto 0)
	);
			  
end MIPS_Mux4x1_ESCOLHER_SAIDA_7SEG;

architecture Mux4x1_SAIDA_OP of MIPS_Mux4x1_ESCOLHER_SAIDA_7SEG is

component Oito_Saidas7seg is
    Port ( entradas : in  STD_LOGIC_VECTOR (31 downto 0);
           saidas_7seg : out  STD_LOGIC_VECTOR (63 downto 0)
			  );
end component;

signal Saida_Placa, Saida_data : std_logic_vector(63 downto 0);
begin

saida: Oito_Saidas7seg port map (data, Saida_data);



Saida_Placa <= Saida_data;

Saida_Primeiro_7seg<= Saida_Placa(7 downto 0);
Saida_Segundo_7seg<=Saida_Placa(15 downto 8);
Saida_Terceiro_7seg<=Saida_Placa(23 downto 16);
Saida_Quarto_7seg<=Saida_Placa(31 downto 24);
Saida_Quinto_7seg<=Saida_Placa(39 downto 32);
Saida_Sexta_7seg<=Saida_Placa(47 downto 40);
Saida_Setimo_7seg<=Saida_Placa(55 downto 48);
Saida_Oitavo_7seg<=Saida_Placa(63 downto 56);

end Mux4x1_SAIDA_OP;

