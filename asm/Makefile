SOURCES = $(wildcard *.s)
OBJECTS = $(SOURCES:.s=.o)
EXECUTABLES = $(OBJECTS:.o=)

%.o: %.s
	nasm -f elf $<

default: $(OBJECTS)
	for exe in $(EXECUTABLES) ; do \
		ld -s -o $$exe $$exe.o ; \
	done

.PHONY: clean
clean:
	rm *.o
	for exe in $(EXECUTABLES) ; do rm $$exe ; done
