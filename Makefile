all:

.PHONY:tar clean

tar:
	tar -cvf tkgetinput.tar tkgetinput

clean:
	rm -rf tkgetinput.tar
