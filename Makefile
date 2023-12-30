all:tkgetinput

.PHONY:tar clean

tar:tkgetinput
	tar -cvf tkgetinput.tar tkgetinput

clean:
	rm -rf tkgetinput
	rm -rf tkgetinput.tar

tkgetinput:
	cp -r src tkgetinput
