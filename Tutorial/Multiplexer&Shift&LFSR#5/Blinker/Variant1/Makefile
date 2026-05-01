OPTIONS = --std=08

blinker_tb.ghw: LFSR_Project_Top.vhdl LFSR_22.vhdl blinker_test.vhdl
	ghdl -a $(OPTIONS) LFSR_22.vhdl LFSR_Project_Top.vhdl blinker_test.vhdl
	ghdl -e $(OPTIONS) blinker_tb
	ghdl -r $(OPTIONS) blinker_tb --vcd=blinker_tb.ghw

.PHONY: run clean


run: blinker_tb.ghw
	surfer blinker_tb.ghw

clean:
	rm *.cf
