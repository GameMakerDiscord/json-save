/// @desc Finds the value of some savedata, and if the data cannot be found return a default value
/// @param name
/// @param default_value

var _name    = argument0;
var _default = argument1;

if ( !variable_global_exists( "savefile_map" ) ) {
    
    //Check to see if we've created a ds_map that contains savedata... and throw an error if not
    show_error( "You must call savefile_load() before attempting to read data!", false );
    
    //Exit from the script
    return _default;
}

if ( !is_string( _name ) ) {
    
    //Show an error if the savedata name is not a string
    show_error( "The data name must be a string!", false );
    
    //Exit from the script
    return _default;
}

//Find the value that's in the ds_map
var _value = global.savefile_map[? _name ];

//If the data is missing (value is "undefined") then change to the default value
if ( _value == undefined ) _value = _default;

//Return the value we found
return _value;