#include "sketch.h"

int idx_surfaces = 0;
Surface* surfaces[100];

fn_parse parser;


gboolean on_draw (GtkWidget *widget, cairo_t *cr, gpointer data) {
	int i = 0;
	for (; i < idx_surfaces; i++) {
		Surface* s = surfaces[i];
		cairo_identity_matrix(cr);
		cairo_translate(cr, s->posx, s->posy);
		//cairo_scale(cr, s->size, s->size);
		cairo_set_source_surface(cr, s->sf, 10, 10);
		cairo_paint(cr);
	}
	return FALSE;
}


void on_enter(GtkEntry *entry, gpointer data) {
	parser((char*) gtk_entry_get_text(entry));
	gtk_widget_queue_draw(GTK_WIDGET(data));
	gtk_entry_set_text(entry, "");
}


void on_icon_press(GtkEntry *entry, GtkEntryIconPosition icon_pos,
		GdkEvent *event, gpointer user_data) {
	gtk_entry_set_text(entry, "");
}


void create_shape (Shape* shape) {
	int i = 0;
	for (; i < shape->number; i++) {
		Surface* s = MALLOC(Surface, 1);
		char* path = MALLOC(char, 8 + strlen(shape->name));
		path[0] = '\0';
		strcat(path, "img/");
		strcat(path, shape->name);
		strcat(path, ".png");
		//printf("%s\n", path);
		s->sf = cairo_image_surface_create_from_png(path);
		s->size = shape->size;
		s->posx = shape->posx;
		s->posy = shape->posy;
		surfaces[idx_surfaces++] = s;
	}
}


int setup(int argc, char *argv[], fn_parse p) {

	parser = p;

	GtkWidget *window, *vbox, *drawing_area, *entry;
	gtk_init(&argc, &argv);

	window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title(GTK_WINDOW(window), "SpeechSketch");
	gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
	gtk_window_set_default_size(GTK_WINDOW(window), 1000, 600);
	gtk_window_set_resizable(GTK_WINDOW(window), FALSE);

	vbox = gtk_box_new(GTK_ORIENTATION_VERTICAL, 1);
	gtk_container_add(GTK_CONTAINER(window), vbox);

	drawing_area = gtk_drawing_area_new();
	gtk_widget_set_size_request(drawing_area, 980, 570);
	gtk_box_pack_start(GTK_BOX(vbox), drawing_area, TRUE, TRUE, 5);

	entry = gtk_entry_new();
	gtk_entry_set_icon_from_stock(GTK_ENTRY(entry),
			GTK_ENTRY_ICON_SECONDARY, GTK_STOCK_CLEAR);
	gtk_box_pack_start(GTK_BOX(vbox), entry, TRUE, TRUE, 5);

	g_signal_connect(G_OBJECT(drawing_area), "draw",
			G_CALLBACK(on_draw), NULL);
	g_signal_connect(G_OBJECT(window), "destroy",
			G_CALLBACK(gtk_main_quit), NULL);
	g_signal_connect(G_OBJECT(entry), "activate",
			G_CALLBACK(on_enter), drawing_area);
	g_signal_connect(G_OBJECT(entry), "icon-press",
			G_CALLBACK(on_icon_press), NULL);

	gtk_widget_show_all(window);
	gtk_main();

	return 0;
}


void show_error(char* msg) {

}
