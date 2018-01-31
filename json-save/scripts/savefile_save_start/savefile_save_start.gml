/// @desc Makes a new ds_map to store savedata in

if ( variable_global_exists( "savefile_map" ) ) {
    
    //If we already have a savefile ds_map, clear it
    ds_map_clear( global.savefile_map );
    
} else {
    
    //If we don't already have a savefile ds_map, create a new one
    global.savefile_map = ds_map_create();
    
}