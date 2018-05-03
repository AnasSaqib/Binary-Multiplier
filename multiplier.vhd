library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multiplier is
port (
		clk, start, reset : in std_logic;
		A, B: in std_logic_vector(3 downto 0);
		done: out std_logic;
		stateout : out std_logic_vector(1 downto 0);
		segment, segment2, segment3 : out std_logic_vector(6 downto 0)
		);
end entity multiplier;

architecture sequential of multiplier is
	type state_type is (s0, s1, s2, s3);
	signal state : state_type;
	signal PPS: std_logic_vector(4 downto 0);
	signal MPR, MPD: std_logic_vector(3 downto 0);
	signal PPSMPR, product: std_logic_vector(7 downto 0);
	signal BC: std_logic_vector(1 downto 0);
	signal Z: std_logic_vector(1 downto 0):= "00";
	signal C: std_logic;
	signal divided_clk : std_logic := '0';
	
	shared variable i : integer; 
	shared variable BCD : std_logic_vector(11 downto 0); 
	shared variable INT : std_logic_vector(7 downto 0);
	
	
begin
process (divided_clk, reset)
	begin
		if (reset = '1')then 
				state <= S0;
				product <= "00000000";
		elsif (divided_clk = '1')then 
			case state is
				when s0=>
					if (start = '1') then
						PPS <= "00000";
						BC <= "11";
						MPD <= A;
						MPR <= B;
						state <= s1;
						C <= '0';
					end if;
									
				when s1=>
					if MPR(0) = '1' then
						PPS <= PPS + MPD;
					end if;
					done <= '0';
					C <= PPS(4);
					state <= s2;
					
				when s2=>
					PPSMPR <= PPS&MPR(3 downto 1);
					BC <= BC - '1';
					PPS <= C&PPS(4 downto 1);
					MPR <= PPS(0)&MPR(3 downto 1);
					C <= '0';
					if BC = Z then
						state <= s3;
					else state <= s1;		
					end if;
					
				when s3=>
					product <= PPSMPR;
					done <= '1';
					state <= s0;
			end case;
		end if;
end process;


process (product, state, divided_clk)
begin
	if (state =s0) then
		i:= 0;
		BCD := "000000000000";
		INT := product(7 downto 0);
	for i in 0 to 7 loop 
		BCD(11 downto 1) := BCD(10 downto 0);  
		BCD(0) := INT(7);
		INT(7 downto 1) := INT(6 downto 0);
		INT(0) :='0';

		if(i < 7 and bcd(3 downto 0) > "0100") then 
			bcd(3 downto 0) := bcd(3 downto 0) + "0011";
		end if;

		if(i < 7 and bcd(7 downto 4) > "0100") then 
			bcd(7 downto 4) := bcd(7 downto 4) + "0011";
		end if;

		if(i < 7 and bcd(11 downto 8) > "0100") then  
			bcd(11 downto 8) := bcd(11 downto 8) + "0011";
		end if;
	end loop;


	case BCD(3 downto 0) is  
		when "0000" => segment <= "1000000"; 
		when "0001" => segment <= "1111001"; 	
		when "0010" => segment <= "0100100";  
		when "0011" => segment <= "0110000"; 
		when "0100" => segment <= "0011001";  
		when "0101" => segment <= "0010010"; 
		when "0110" => segment <= "0000010"; 
		when "0111" => segment <= "1111000";  
		when "1000" => segment <= "0000000"; 
		when "1001" => segment <= "0011000"; 
		when others => segment <= "0111111"; 
	end case;

	case BCD(7 downto 4) is   
		when "0000" => segment2 <= "1000000"; 
		when "0001" => segment2 <= "1111001"; 
		when "0010" => segment2 <= "0100100"; 
		when "0011" => segment2 <= "0110000"; 
		when "0100" => segment2 <= "0011001"; 
		when "0101" => segment2 <= "0010010"; 
		when "0110" => segment2 <= "0000010"; 
		when "0111" => segment2 <= "1111000"; 
		when "1000" => segment2 <= "0000000"; 
		when "1001" => segment2 <= "0011000";  
		when others => segment2 <= "0111111"; 
	end case;

	case BCD(11 downto 8) is 
		when "0000" => segment3 <= "1000000";  
		when "0001" => segment3 <= "1111001"; 	
		when "0010" => segment3 <= "0100100";  
		when "0011" => segment3 <= "0110000"; 
		when "0100" => segment3 <= "0011001";  
		when "0101" => segment3 <= "0010010"; 
		when "0110" => segment3 <= "0000010"; 
		when "0111" => segment3 <= "1111000"; 
		when "1000" => segment3 <= "0000000";  
		when "1001" => segment3 <= "0011000"; 
		when others => segment3 <= "0111111"; 
		
	end case;
	
end if;
end process;		

process(divided_clk) is
begin
case state is 
	when s0 => stateout <= "00"; -- s0 
	when s1 => stateout <= "01"; -- s1	
	when s2 => stateout <= "10"; -- s2 
	when s3 => stateout <= "11"; -- s3
	when others => stateout <= "00"; -- invalid

end case;
end process;

process (clk)
variable clk_count: integer:=0;
begin
if(clk'event and clk = '1') then
-- for simulation replace 12500000 with smaller number such as 2 or 4 to
-- minimize simulation time
	if clk_count = 25000000 then
		divided_clk <= not divided_clk;
		clk_count := 0;
	else
		clk_count := clk_count + 1;
	end if;
end if;
end process;

end architecture sequential;