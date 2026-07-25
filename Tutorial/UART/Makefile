OPTIONS = --std=08
SOURCE1 = Count_And_Toggle_Impulse.vhdl uart_recv.vhdl uart_recv_tb.vhdl
TEST_BENCH_TOP1 = uart_recv_tb
OUTPUT1 = uart_recv_tb.ghw

SOURCE2 = Count_And_Toggle_Impulse.vhdl uart_tx.vhdl uart_tx_tb.vhdl
TEST_BENCH_TOP2 = uart_tx_tb
OUTPUT2 = uart_tx_tb.ghw

$(OUTPUT1): $(SOURCE1)
	ghdl -a $(OPTIONS) $(SOURCE1)
	ghdl -e $(OPTIONS) $(TEST_BENCH_TOP1)
	ghdl -r $(OPTIONS) $(TEST_BENCH_TOP1) --vcd=$(OUTPUT1)

$(OUTPUT2): $(SOURCE2)
	ghdl -a $(OPTIONS) $(SOURCE2)
	ghdl -e $(OPTIONS) $(TEST_BENCH_TOP2)
	ghdl -r $(OPTIONS) $(TEST_BENCH_TOP2) --vcd=$(OUTPUT2)


.PHONY: run_rx run_tx clean

run_rx: $(OUTPUT1)
	surfer $(OUTPUT1)

run_tx: $(OUTPUT2)
	surfer $(OUTPUT2)


clean:
	rm -f *.ghw
	rm -f *.cf
