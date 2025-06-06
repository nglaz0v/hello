
test: hello.pyx setup.py
	python3 setup.py build_ext --inplace
	python3 -c "import hello; hello.say_hello()"

.PHONY: clean
clean:
	rm -rf build hello.c hello*.so
