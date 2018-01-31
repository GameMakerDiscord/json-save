/// @desc Writes the savedata to disk
/// @param filename

var _filename = argument0;

if ( !variable_global_exists( "savefile_map" ) ) {
    
    //Check to see if we've created a ds_map that contains savedata... and throw an error if not
    show_error( "You must call savefile_save_start() before savefile_save_end()!", false );
    
    //Exit from the script
    return false;
}

//Turn the ds_map into a string
var _string = json_encode( global.savefile_map );

//Work out how long the string is in byte, plus one byte for a null terminator
//(A "null terminator" is used so GM knows where the end of the string is when we load the savedata)
var _length = string_byte_length( _string )+1;

//Create a new buffer to store the string
var _buffer = buffer_create( _length, buffer_fixed, 1 );
buffer_write( _buffer, buffer_string, _string );

//Save the buffer to disk
buffer_save( _buffer, _filename );

//We don't need the buffer any more, we can destroy it
buffer_delete( _buffer );

return true;