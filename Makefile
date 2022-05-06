all:
	git submodule update --recursive --init
	cd grammars/java-tree-sitter
	./build.py
