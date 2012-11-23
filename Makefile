
CC = gcc
CFLAGS = -lfl
#CFLAGS = `pkg-config --cflags --libs gtk+-3.0` -lfl


all: speech_sketch

speech_sketch: speech_sketch.yy.c
	$(CC) -o speech_sketch speech_sketch.tab.c speech_sketch.yy.c $(CFLAGS)

speech_sketch.yy.c: speech_sketch.tab.h
	flex -o speech_sketch.yy.c speech_sketch.l

speech_sketch.tab.h: speech_sketch.y speech_sketch.l
	bison -d speech_sketch.y

.PHONY: clean
clean:
	rm -rf *o speech_sketch speech_sketch.tab.* speech_sketch.yy.c

