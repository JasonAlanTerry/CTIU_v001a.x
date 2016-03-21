sectors_allSectors = []; // For tracking total sectors???
sectors_taken = [];
sectors_opfor = [];
sectors_primary = [];
sectors_secondary = [];
sectors_military = [];
sectors_intel = [];
sectors_resource = [];


{
	_isobjective = false;
	_tempmarker = toArray _x; _tempmarker resize 11;
	if ( toString _tempmarker == "opfor_point" ) then {
		sectors_opfor pushback _x;
		_isobjective = false;
	};
	_tempmarker = toArray _x; _tempmarker resize 9; // Why do I need the toArray??
	if ( toString _tempmarker == "secondary" ) then {
		sectors_secondary pushback _x;
		_isobjective = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 7;
	if ( toString _tempmarker == "primary" ) then {
		sectors_primary pushback _x;
		_isobjective = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 8;
	if ( toString _tempmarker == "resource" ) then {
		sectors_resource pushback _x;
		_isobjective = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 8;
	if ( toString _tempmarker == "military" ) then {
		sectors_military pushback _x;
		_isobjective = true;
	};
	_tempmarker = toArray _x; _tempmarker resize 5;
	if ( toString _tempmarker == "intel" ) then {
		sectors_intel pushback _x;
		_x setMarkerTextLocal format ["%1 %2",markerText _x, mapGridPosition (markerPos _x)];
		_isobjective = true;
	};

	if ( _isobjective ) then {
		sectors_allSectors pushback _x;
	};
} foreach allMapMarkers;