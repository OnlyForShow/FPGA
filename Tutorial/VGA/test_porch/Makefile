OPTIONS = --std=08
SOURCE1 = ../vga_sync_pulse.vhdl ../vga_sync_porch.vhdl tb_vga_porch.vhdl
TEST_BENCH_TOP1 = vga_porch_tb
OUTPUT1 = vga_porch_tb.ghw



$(OUTPUT1): $(SOURCE1)
	ghdl -a $(OPTIONS) $(SOURCE1)
	ghdl -e $(OPTIONS) $(TEST_BENCH_TOP1)
	ghdl -r $(OPTIONS) $(TEST_BENCH_TOP1) --vcd=$(OUTPUT1)



.PHONY: run clean

run: $(OUTPUT1)
	surfer $(OUTPUT1)


clean:
	rm -f *.ghw
	rm -f *.cf
