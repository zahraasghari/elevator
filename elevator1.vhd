library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity elevator1 is 
port (
clk,en :in std_logic ;
a1,a2,a3,a4,a5 :in std_logic:='0' ;  --inside button
b2,b3,b4,b5 :in std_logic:='0' ;  --outside up button ( /\ )
c1,c2,c3,c4 :in std_logic:='0' ;  --outside up button ( \/ )
d1,d2,d3,d4,d5 :out std_logic:='0' ; --door open 
e1,e2 :out std_logic ; --(/\) 0r (\/) sign 
s :out std_logic_vector (6 downto 0) ;--7segment output 
rng :in std_logic:='0' ; --ring button
O_r :out std_logic:='0'  --enabling ring
);
end elevator1 ;
architecture bhv of elevator1 is 
type state is (s1,s2,s3,s4,s5);
signal ns,cs :state;
signal o : std_logic_vector (2 downto 0) ;
signal c : std_logic_vector (2 downto 0) ;
begin
process (clk,en) --checking clock and ring 
begin 
if en ='1' then    
if clk='1' and clk' event then
			cs <= ns;
		end if;
		end if;
		if rng ='1' then O_r <='1';
		else o_r <='0' ;
		end if ;

	end process;
	process(a1,a2,a3,a4,a5,b2,b3,b4,b5,c1,c2,c3,c4,o,cs,ns)	
	begin 
	case cs is 
	when s1 => o <="001" ; e1<='0'; e2<='0';    --first floor 
	if a2='1' then ns<=s2 ; o <= "010"; e1<='1'; d1<='0';
	elsif b2='1' then ns<=s2 ; o <= "010" ; e1<='1'; d1<='0';
	elsif a3='1' then ns<=s3 ; o <= "011" ; e1<='1'; d1<='0';
	elsif b3='1' then ns<=s3 ; o <= "011" ; e1<='1'; d1<='0';
	elsif a4='1' then ns<=s4 ; o <= "100" ; e1<='1'; d1<='0';
	elsif b4='1' then ns<=s4 ; o <= "100" ; e1<='1'; d1<='0';
	elsif a5='1' then ns<=s5 ; o <= "101" ; e1<='1'; d1<='0';
	elsif b5='1' then ns<=s5 ; o <= "101" ; e1<='1'; d1<='0';
	elsif a1='1' then ns<=s1 ; o <= "010" ; d1<='1';
   elsif c1='1' then ns<=s1 ; o <= "001" ; d1<='1';  end if;
   when s2 => o <="010" ; e1<='0'; e2<='0';   --secend floor 
	if a3='1' then ns<=s3 ; o <= "011" ; e1<='1'; d2<='0';
	elsif b3='1' then ns<=s3 ; o <= "011" ; e1<='1'; d2<='0';
	elsif a4='1' then ns<=s3 ; o <= "100" ; e1<='1'; d2<='0';
	elsif b4='1' then ns<=s3 ; o <= "100" ; e1<='1'; d2<='0';
	elsif a5='1' then ns<=s4 ; o <= "101" ; e1<='1'; d2<='0';
	elsif b5='1' then ns<=s4 ; o <= "101" ; e1<='1'; d2<='0';
	elsif a1='1' then ns<=s1 ; o <= "010" ; e2<='1'; d2<='0';
	elsif c1='1' then ns<=s1 ; o <= "001" ; e2<='1'; d2<='0';
	elsif a2='1' then ns<=s1 ; o <= "001" ; d2<='1';
   elsif b2='1' then ns<=s2 ; o <= "010" ; d2<='1';
   elsif c2='1' then ns<=s2 ; o <= "010" ; d2<='1';  end if;
	when s3 => o <="011" ; e1<='0'; e2<='0';   --thierd floor 
	if a4='1' then ns<=s4 ; o <= "100" ; e1<='1'; d3<='0';
	elsif b4='1' then ns<=s4 ; o <= "100" ; e1<='1'; d3<='0';
	elsif a5='1' then ns<=s5 ; o <= "101" ; e1<='1'; d3<='0';
	elsif b5='1' then ns<=s5 ; o <= "101" ; e1<='1'; d3<='0';
	elsif a2='1' then ns<=s2 ; o <= "010" ; e2<='1'; d3<='0';
	elsif c2='1' then ns<=s2 ; o <= "010" ; e2<='1'; d3<='0';
	elsif a1='1' then ns<=s1 ; o <= "010" ; e2<='1'; d3<='0';
	elsif c1='1' then ns<=s1 ; o <= "010" ; e2<='1'; d3<='0';
	elsif a3='1' then ns<=s3 ; o <= "011" ; d3<='1';
	elsif b3='1' then ns<=s3 ; o <= "011" ; d3<='1';
   elsif c3='1' then ns<=s3 ; o <= "011" ; d3<='1';	end if;
	when s4 => o <="100" ; e1<='0'; e2<='0';   --fourth floor
	if a5='1' then ns<=s5 ; o <= "101" ; e1<='1'; d4<='0';
	elsif b5='1' then ns<=s5 ; o <= "101" ; e1<='1'; d4<='0';
	elsif a3='1' then ns<=s3 ; o <= "011" ; e2<='1'; d4<='0';
	elsif c3='1' then ns<=s3 ; o <= "011" ; e2<='1'; d4<='0';
	elsif a2='1' then ns<=s2 ; o <= "010" ; e2<='1'; d4<='0';
	elsif c2='1' then ns<=s2 ; o <= "010" ; e2<='1'; d4<='0';
	elsif a1='1' then ns<=s1 ; o <= "010" ; e2<='1'; d4<='0';
	elsif c1='1' then ns<=s1 ; o <= "010" ; e2<='1'; d4<='0';
	elsif a4='1' then ns<=s4 ; o <= "100" ; d4<='1';
	elsif b4='1' then ns<=s4 ; o <= "100" ; d4<='1';
   elsif c4='1' then ns<=s4 ; o <= "100" ; d4<='1';  end if;
   when s5 => o <="101" ; e1<='0'; e2<='0';   --fiveth floor 
	if a4='1' then ns<=s4 ; o <= "100" ; e2<='1'; d5<='0';
	elsif c4='1' then ns<=s4 ; o <= "100" ; e2<='1'; d5<='0';
	elsif a3='1' then ns<=s3 ; o <= "011" ; e2<='1'; d5<='0';
	elsif c3='1' then ns<=s3 ; o <= "011" ; e2<='1'; d5<='0';
	elsif a2='1' then ns<=s2 ; o <= "010" ; e2<='1'; d5<='0';
	elsif c2='1' then ns<=s2 ; o <= "010" ; e2<='1'; d5<='0';
	elsif a1='1' then ns<=s1 ; o <= "010" ; e2<='1'; d5<='0';
	elsif c1='1' then ns<=s1 ; o <= "010" ; e2<='1'; d5<='0';
	elsif a5='1' then ns<=s5 ; o <= "101" ; d5<='1';
   elsif b5='1' then ns<=s5 ; o <= "101" ; d5<='1';	end if;
   end case ;
	end process ;
			process (clk,c,o)    --rigester 
		begin
				if(clk = '1' and clk'event )then
						c <= o ;
				end if;
				end process;
			s <=                 --decoder 7segment 
			"1111001" when c= "001" else
			"0100100" when c= "010" else
			"0110000" when c= "011" else
			"0011001" when c= "100" else
			"0010010" when c= "101" ;
			end bhv ;