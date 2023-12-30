all:

tar:
	cp -r src tkgetinput
	tar -cvf tkgetinput.tar tkgetinput
	rm -rf tkgetinput

clean:
	rm -rf tkgetinput.tar
