library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all

-- Define entitiy 8bit_adder
-- clk : clock, 
entity 8bit_adder is 
  port(a,b : in std_logic_vector(7 downto 0 );
     clk,clear,cin: in std_logic;
     s: out std_logic_vector(7 downto 0);
     cout:  out std_logic);
end 8bit_adder;
   
-- Define architecture of 8bit_adder
architecture brhavioural of 8bit_adder
signal temp : std_logic_vector(8 downto 0 );
begin 
   comb: process(a,b,cin)
   begin
      temp <= (('0' & a) + ('0' & b) + ('00000000' & cin));
   end process comb;
   seq: process(clk,clear)
   begin
      if (clear = '1') then 
         s <= "0000000";
         cout <= '0';
      else if (rising_edge(clk)) then 
         s <= temp( 7 downto 0 );
         cout <= temp(8);         
      end if;
    end process seq
end behavioural;
      
   
