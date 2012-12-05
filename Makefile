CC=gcc
CFLAGS=-c -Wall -lfl
GTKFLAGS=`pkg-config --cflags --libs gtk+-3.0`
SOURCES=speech_sketch.yy.c sketch.c
EXECUTABLE=speech_sketch


all: $(SOURCES) $(EXECUTABLE)

run: $(EXECUTABLE)
	./$< "un arbol centro"

$(EXECUTABLE): speech_sketch.yy.c sketch.o
	$(CC) -o $@ $< speech_sketch.tab.c sketch.o -lfl `pkg-config --cflags --libs gtk+-3.0`

sketch.o: sketch.c
	$(CC) -o $@ $< $(CFLAGS) $(GTKFLAGS)

speech_sketch.yy.c: speech_sketch.tab.h
	flex -o speech_sketch.yy.c speech_sketch.l

speech_sketch.tab.h: speech_sketch.y speech_sketch.l
	bison -d speech_sketch.y

doc:
	doxygen Doxyfile

.PHONY=clean
clean:
	rm -rf $(EXECUTABLE) *.o speech_sketch.tab.* speech_sketch.yy.*
