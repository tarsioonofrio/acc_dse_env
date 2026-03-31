library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multip is
  generic (
    INPUT_SIZE : integer := 20;
    QUANT_SIZE : integer := 8
  );
  port (
    op1     : in  std_logic_vector(INPUT_SIZE-1 downto 0);
    op2     : in  std_logic_vector(INPUT_SIZE-1 downto 0);
    product : out std_logic_vector((INPUT_SIZE + QUANT_SIZE) - 1 downto 0)
  );
end entity multip;

architecture rtl of multip is
  signal product_full : signed((INPUT_SIZE * 2) - 1 downto 0);
begin
  product_full <= signed(op1) * signed(op2);

  -- Match the FastConv naive multiplier interface: keep the least-significant
  -- INPUT_SIZE+QUANT_SIZE bits of the signed product.
  product <= std_logic_vector(product_full((INPUT_SIZE + QUANT_SIZE) - 1 downto 0));
end architecture rtl;
