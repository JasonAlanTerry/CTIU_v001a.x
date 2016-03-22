/*
 * Function to find all Nearby_Sectors in reliation to playerPos, this will be adjusted later, currently for debug / testing.
 */
params [ ["_postosearch", getPos player] ];
// Set up privates? Unsure if I have to do this...
_isnearby = [];
_nearby_count = 0;

// check to see if sectors in sectors_allsectors is in range of player, in realiton to the SECTOR_SPAWNRADIUS, store in array _isnearby
// Count _isnearby
_isnearby = [ sectors_allSectors , { (markerPos _x) distance _postosearch < SECTOR_SPAWNRADIUS }  ] call BIS_fnc_conditionalSelect;
_nearby_count = count _isnearby;

_nearby_count // Return nearby_count
