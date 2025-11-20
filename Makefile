CC ?= gcc
CFLAGS ?= -Wall -Wpedantic

LIB = libdlinfo_wrapper.so

all: run

wrapper: dlinfo_wrapper.c
	$(CC) $(CFLAGS) -fPIC -shared $< -o $(LIB)

run: wrapper
	./dlinfo_wrapper

clean:
	$(RM) $(LIB)
