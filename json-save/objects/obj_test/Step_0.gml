//Move the circle whenever we click the mouse button
if ( mouse_check_button( mb_any ) ) {
    circle_x = mouse_x;
    circle_y = mouse_y;
}



if ( keyboard_check_pressed( ord( "S" ) ) ) {
    
    //Make a new savefile every time we press the S key
    savefile_save_start();
    savefile_set( "x", circle_x );
    savefile_set( "y", circle_y );
    var _result = savefile_save_end( "test.json" );
    
    if ( _result ) {
        //Show a message in the IDE's output if we've been successful
        show_debug_message( "Saved succesfully to test.json" );
    } else {
        //Show a message in the IDE's output if something's gone wrong
        show_debug_message( "Did not save successfully to test.json!" );
    }
    
}



if ( keyboard_check_pressed( ord( "L" ) ) ) {
    
    //Load a savefile every time we press the L key
    var _result = savefile_load( "test.json" );
    
    if ( _result ) {
        //Show a message in the IDE's output if we've been successful
        show_debug_message( "Loaded succesfully from test.json" );
    } else {
        //Show a message in the IDE's output if something's gone wrong
        show_debug_message( "Did not load successfully from test.json!" );
    }
    
    //...and move the circle too
    circle_x = savefile_get( "x", room_width/2  );
    circle_y = savefile_get( "y", room_height/2 );
    
}
