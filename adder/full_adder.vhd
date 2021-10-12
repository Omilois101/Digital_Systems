library IEEE; -- declartion of IEEE library 
use IEEE.std_logic_1164.all; -- 
  
-- ENTITY
  entity full_adder is 
    port(a,b,cin:in std_logic;
         s,cout:out std_logic);
  end full_adder;
-- Architecture 
-- full_adder is the name but structural defines the full_adder    
  Architecture structural of full_adder 
  begin   -- add the begin 
    s <= ( a xor b)xor cin ;
    cout <= ((a and b) or ( a and cin ) or ( b and cin));
  end structural;
      
 -- or Architecture structural of full adder
--  signals s_temp,cout_temp,cout_int: std_logic;
--  Begin
--      adder1 : process(a,b,cin)  # a,b,cin are the sensnsitivity list of the process adder1 
--          s_temp <= (a xor b) xor cin;
--          count_int <= a and b;
--          cout_temp <= (cout_int ( (a or b) and cin));
--      end process adder1
--      s <= s_temp;
--      cout <= cout_temp;
-- end structural; 
      
 -- or Architecture behavioural of full adder
--  signals temp: std_logic-vector(1 downto 0);
--  Begin
--      adder1 : process(a,b,cin)  # a,b,cin are the sensnsitivity list of the process adder1 
--            temp <= ('0'& a) + ('0'& b) + ('0'& b)   
--      end process adder1;
--      s <= temp(0);
--      cout <= temp(0);
-- end behavioural;       
