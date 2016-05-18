/* Debug Function shows projected spawnable sectors,
this will help me plan ahead and keep AI spawn spam down in the future. */

// waitUntil { !isNil "_nearby_count" }; // must be defined? But it's local... possible fuck-up?

// debug hints not showing.... why...
hint "stage 1";
sleep 5;

// call user func that gets all sectors within 850 of player
_nearby_count = 0;
hint "stage 1.5";
_nearby_count = [debug_player] call JF_getAllNearbySectors;

// debug hints not showing.... why...
hint "stage 2";
sleep 5;

// Not 100% on the syntax here, the examples kinda sucked...
private _nc = "";
if (_nearby_count > 0) then {
    hint "No Sectors!";
};

_nc = str(_nearby_count);
hint "stage 3";
sleep 5;

// display total spawnable sectors
hint ["PROJECTED NUMBER OF CURRENTLY ACTIVE SECTORS: %1", _nc]; // display total spawnable sectors
