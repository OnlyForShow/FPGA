# clock period in ns, for clock frequency calculate it yourself
# 40.0 ns period = 25 MHz frequency
create_clock -period 40.00 -name {i_clk} [get_ports {i_clk}]
