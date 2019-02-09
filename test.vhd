library ieee;
use ieee.std_logic_1164.all;

entity test is
  port(
    clk       : in std_logic;
    resetn    : in std_logic;
    button    : out std_logic
    );
    
end entity;
 
architecture rtl of test is
    signal count_out    : std_logic_vector(1 downto 0);
    

begin

inst_count : process(clk,reset)
  variable counter : unsigned(1 downto 0);
begin
  if resetn = '1' then
    counter := (others => '0');
  elsif rising_edge(clk) then
    if counter >= 3 then
      counter := (others => '0');
    else 
      counter := counter + 1
    end if;
  end if;
count_out <= std_logic_vector(counter);
end process;

end architecture;

 
 
