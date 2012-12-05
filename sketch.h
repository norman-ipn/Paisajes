#ifndef SKETCH_H
#define SKETCH_H

#include <stdlib.h>
#include <string.h>
#include <cairo.h>
#include <gtk/gtk.h>


#define MALLOC(type, n) ((type*) malloc((n) * sizeof(type)))


typedef struct {
	int number;
	char* name;
	double size;
	int posx, posy;
} Shape;

typedef struct {
	cairo_surface_t* sf;
	double size;
	int posx, posy;
} Surface;

typedef void (*fn_parse)(char*);


void create_shape(Shape* shape);
int setup(int argc, char *argv[], fn_parse p);
void show_error(char* msg);



#endif
