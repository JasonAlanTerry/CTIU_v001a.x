/*
 * Function to find all Nearby_Sectors in reliation to playerPos, this will be adjusted later, currently for debug / testing.
 */
params [ _current_player ]; // Needs to take a SINGLE player as a param.

hint "inside func";
_pos getPos _current_player; // get position of player and set it to x
hint "step 1"; sleep 2;
_is_nearby = []; // empty array???
hint "step 2"; sleep 2;
_nearby_count = 0;
hint "step 3"; sleep 2;
// check to see if sectors in sectors_allsectors is in range of player, in realiton to the SECTOR_SPAWNRADIUS, store in array _is_nearby
// Count _is_nearby
hint "step 4"; sleep 2;
_is_nearby = [ sectors_allSectors , { (markerPos _x) distance _pos < SECTOR_SPAWNRADIUS }  ] call BIS_fnc_conditionalSelect; // sort through ALL sectors, and get the ones within range of _pos put them into _is_nearby
hint "step 5"; sleep 2;
_nearby_count = count _is_nearby; // Count what IS nearby
hint "step 6"; sleep 2;
_nearby_count; // Return nearby_count
