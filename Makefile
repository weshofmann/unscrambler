CFLAGS = -O3 -Wall
LDFLAGS = 

sources := $(wildcard *.c)
objects := $(sources:.c=.o)

target := unscrambler


$(target): $(objects)
	$(CC) $(LDFLAGS) $^ -o $@

%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(target)
