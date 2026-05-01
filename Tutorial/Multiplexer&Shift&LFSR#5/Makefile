OPTIONS = --std=08

lfsr_tb.ghw: LFSR.vhdl LFSR_test.vhdl
	ghdl -a $(OPTIONS) LFSR.vhdl LFSR_test.vhdl
	ghdl -e $(OPTIONS) lfsr_tb
	ghdl -r $(OPTIONS) lfsr_tb --vcd=lfsr_tb.ghw


.PHONY: run clean

run: lfsr_tb.ghw
	surfer lfsr_tb.ghw

clean:
	rm *.cf
