//Set up some draw coordinates for a circle
circle_x = room_width/2;
circle_y = room_height/2;



//Make a new savefile every time we start the game
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
