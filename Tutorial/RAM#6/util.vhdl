-- helper functions like log2, ceil

package pkg is
  function ceil_and_log2(n : positive) return natural;
end package pkg;

package body pkg is
  function ceil_and_log2(n : positive) return natural is
    variable result : natural := 0;
    variable value : natural := n - 1;
  begin
    while value > 0 loop
      result := result + 1;
      value := value / 2;
    end loop;
    return result;
  end function ceil_and_log2;
  
end package body pkg; 
