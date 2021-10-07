library IEEE; -- declartion of IEEE library 
use IEEE.std_logic_1164.all; -- 
  
-- ENTITY
  entity full_adder is 
    port(a,b,cin:in std_logic;
         s,cout:out std_logic;)
  end full_adder;
-- Architecture 
  architecture structural of full_adder -- full_adder is the name but structural defines the full_adder
  begin   -- add the begin 
    s <= ( a xor b)xor cin ;
    cout <= ((a and b) or ( a and cin ) or ( b and cin));
  end structural;
      
  
