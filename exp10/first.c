#include<gtk/gtk.h>
static void hello( GtkWidget *widget,gpointer data )
{
	g_print("Hello World\n");
}
static gboolean delete_event(GtkWidget *widget,GdkEvent *event,gpointer data)
{
	g_print("delete event occured\n");
	return TRUE;
}
static void destroy(GtkWidget *widget,gpointer data)
{
	gtk_main_quit();
}


int main(int argc,char* argv[])
{
	gtk_init(&argc,&argv);
	GtkWidget* window;
	GtkWidget* button;
	window=gtk_window_new(GTK_WINDOW_TOPLEVEL);
	g_signal_connect(window,"delete event",G_CALLBACK(delete_event),NULL);
	g_signal_connect(window,"destroy",G_CALLBACK(destroy),NULL);
	gtk_container_set_border_width (GTK_CONTAINER(window),100);
	button=gtk_button_new_with_label ("HELLO WORLD");
	g_signal_connect(button,"clicked",G_CALLBACK(hello),NULL);
	g_signal_connect_swapped(button,"clicked",G_CALLBACK(gtk_widget_destroy),window);
	gtk_widget_show(window);
	gtk_widget_show(button);
	gtk_main();
	return 0;
}
