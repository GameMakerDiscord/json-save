//Draw our circle
draw_set_colour( c_white );
draw_circle( circle_x, circle_y, 32, false );

//Draw some info text
draw_text( 10, 10, "ds_map/JSON-based savefile system\n\n@jujuadams\n\n2018/01/31\n\nPress S to save\nPress L to load\nClick the mouse to move the circle" );