/* Debug Function shows projected spawnable sectors,
this will help me plan ahead and keep AI spawn spam down in the future. */

waitUntil { !isNil "_nearby_count" }; // must be defined? But it's local... possible fuck-up?

// debug hints not showing.... why...
hint "stage 1";
sleep 5;

// call user func that gets all sectors within 850 of player
_nearby_count = [] call JF_getAllNearbySectors;

// debug hints not showing.... why...
hint "stage 2";
sleep 5;

// Not 100% on the syntax here, the examples kinda sucked...
_nc = if ( _nearby_count > 0 ) [{hint ["No Sectors!"];};{ _nc str _nearby_count;};];wswswd
hint "stage 3";
sleep 5;

// display total spawnable sectors
hint ["PROJECTED SPAWNED SECTORS: %1", _nc]; // display total spawnable sectors
