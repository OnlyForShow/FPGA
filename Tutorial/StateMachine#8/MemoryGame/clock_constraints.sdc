# clock period in ns, for clock frequency calculate it yourself
# 4.0 ns period = 250 MHz frequency
create_clock -period 4.00 -name {i_Clk} [get_ports {i_Clk}]
