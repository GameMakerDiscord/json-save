/// @desc Adds savedata to the savefile ds_map
/// @param name
/// @param value

var _name  = argument0;
var _value = argument1;

if ( !variable_global_exists( "savefile_map" ) ) {
    
    //Check to see if we've created a ds_map that contains savedata... and throw an error if not
    show_error( "You must call savefile_save_start() before savefile_set()!", false );
    
    //Exit from the script
    return false;
}

if ( !is_string( _name ) ) {
    
    //Show an error if the savedata name is not a string
    show_error( "The data name must be a string!", false );
    
    //Exit from the script
    return false;
}

//Write the savedata to the ds_map
global.savefile_map[? _name ] = _value;

return true;