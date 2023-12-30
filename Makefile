all:

.PHONY:tar clean

tar:
	make clean
	tar -cvf tkgetinput.tar tkgetinput

clean:
	rm -rf tkgetinput.tar tkgetinput/__pycache__ __pycache__
