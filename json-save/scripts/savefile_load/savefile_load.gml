/// @desc Loads in a savefile from disk and makes a ds_map from it
/// @param filename

var _filename = argument0;

//If we already have a ds_map for some savedata, destroy it
if ( variable_global_exists( "savefile_map" ) ) ds_map_destroy( global.savefile_map );

if ( !file_exists( _filename ) ) {
    
    //If we can't find the target file, show an error
    show_error( _filename + " could not be found!", false );
    
    //Create a blank savedata ds_map
    global.savefile_map = ds_map_create();
    
    //Exit from the script
    return false;
    
}

//Load in the target file as a buffer
var _buffer = buffer_load( _filename );

//Read out a string from the buffer - this is our encoded ds_map
var _string = buffer_read( _buffer, buffer_string );

//Turn the string into a ds_map that contains our savedata
global.savefile_map = json_decode( _string );

//Delete the buffer - we don't need it any more
buffer_delete( _buffer );

return true;