CC=gcc
#CFLAGS=-c -Wall -lfl
CFLAGS=-c -Wall -lfl `pkg-config --cflags --libs gtk+-3.0`
SOURCES=speech_sketch.yy.c
#sketch.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=speech_sketch


all: $(SOURCES) $(EXECUTABLE)

run: $(EXECUTABLE)
	./$< "un arbol centro"

#speech_sketch: sketch speech_sketch.yy
#	$(CC) -o $@ $< sketch.o speech_sketch.yy.o

speech_sketch: speech_sketch.yy.c
	$(CC) -o $@ $< $(CFLAGS)

sketch: sketch.c
	$(CC) -o $@ $< `pkg-config --cflags --libs gtk+-3.0`

speech_sketch.yy.c: speech_sketch.tab.h
	flex -o speech_sketch.yy.c speech_sketch.l

speech_sketch.tab.h: speech_sketch.y speech_sketch.l
	bison -d speech_sketch.y

doc:
	doxygen Doxyfile

.PHONY=clean
clean:
	rm -rf $(EXECUTABLE) *.o speech_sketch.tab.* speech_sketch.yy.*
