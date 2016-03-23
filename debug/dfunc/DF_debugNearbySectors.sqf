waitUntil { !isNil "_nearby_count" };

hint "stage 1";
sleep 5;
_nearby_count = [] call JF_getAllNearbySectors;
hint "stage 2";
sleep 5;
_nc = if ( _nearby_count > 0 ) [{hint ["No Sectors!"];}, { _nc str _nearby_count}];
hint "stage 3";
sleep 5;
hint ["PROJECTED SPAWNED SECTORS: %1", _nc];
