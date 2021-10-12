library IEEE;
use library.std_logic_1164.all;
use library.std_logic.unsigned.all;

entity bitcomparator is
   port( num1: in std_logic_vector(3 downto 0);
         num2: in std_logic_vector(3 downto 0);
         less: out std_logic;
         equal : out std_logic;
         greater: out std_logic);
         
end bitcomparator;

architecture behavioural of 4bitcomparator
begin 
  process( num1,num2)
  begin
     if(num1 > num2)
        less <= '0';
        greater <= '1';
        equal <= '0';
     else if(num1 < num2)
        less <= '1';
        greater <= '0';
        equal <= '0';
     else
        less <= '0';
        greater <= '0';
        equal <= '1';
     end if;
end behavioural;
