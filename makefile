all: c.c
	gcc -o shell c.c

run: all
	./shell

clean:
	rm shell debug *~

debug: c.c
	gcc -o debug -g c.c

valgrind: debug
	valgrind ./debug
