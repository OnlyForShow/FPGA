OPTIONS = --std=08

SOURCE = state_machine.vhdl tb_turnstile.vhdl
TEST_NAME = turnstile_tb


$(TEST_NAME).ghw: $(SOURCE)
	ghdl -a $(OPTIONS) $(SOURCE)
	ghdl -e $(OPTIONS) $(TEST_NAME)
	ghdl -r $(OPTIONS) $(TEST_NAME) --vcd=$(TEST_NAME).ghw


.PHONY: run clean

run: $(TEST_NAME).ghw
	surfer $(TEST_NAME).ghw

clean:
	rm *.cf
