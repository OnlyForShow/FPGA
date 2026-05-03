OPTIONS = --std=08

SOURCE = util.vhdl ram.vhdl ram_test.vhdl
TEST_NAME = ram_tb


$(TEST_NAME).ghw: $(SOURCE)
	ghdl -a $(OPTIONS) $(SOURCE)
	ghdl -e $(OPTIONS) $(TEST_NAME)
	ghdl -r $(OPTIONS) $(TEST_NAME) --vcd=$(TEST_NAME).ghw


.PHONY: run clean

run: $(TEST_NAME).ghw
	surfer $(TEST_NAME).ghw

clean:
	rm *.cf
