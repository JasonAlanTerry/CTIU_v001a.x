sectors_allSectors = []; // For Tracking Total sectors???
sectors_taken = []; // For Tracking Captured Sectors
sectors_opfor = []; // marker used to spawn opfor units semi-randomly
sectors_primary = []; // Group of ALl Primary Objectives
sectors_secondary = []; // Group of ALL Secondary Objecttives
sectors_military = []; // Group of ALL Military Objectives
sectors_intel = []; // Group of ALL Intel Objectives
sectors_resource = []; // Group of ALL Resource Objectives


{
	_is_objective = false; // Assure _is_objective starts as FALSE for checks
	_temp_marker = toArray _x;
  _temp_marker resize 11;

	if ( toString _temp_marker == "opfor_point" ) then {
		sectors_opfor pushback _x;
		_is_objective = false;
	};
	_temp_marker = toArray _x; _temp_marker resize 9; // Why do I need the toArray??
	if ( toString _temp_marker == "secondary" ) then {
		sectors_secondary pushback _x;
		_is_objective = true;
	};
	_temp_marker = toArray _x; _temp_marker resize 7;
	if ( toString _temp_marker == "primary" ) then {
		sectors_primary pushback _x;
		_is_objective = true;
	};
	_temp_marker = toArray _x; _temp_marker resize 8;
	if ( toString _temp_marker == "resource" ) then {
		sectors_resource pushback _x;
		_is_objective = true;
	};
	_temp_marker = toArray _x; _temp_marker resize 8;
	if ( toString _temp_marker == "military" ) then {
		sectors_military pushback _x;
		_is_objective = true;
	};
	_temp_marker = toArray _x; _temp_marker resize 5;
	if ( toString _temp_marker == "intel" ) then {
		sectors_intel pushback _x;
		_x setMarkerTextLocal format ["%1 %2",markerText _x, mapGridPosition (markerPos _x)];
		_is_objective = true;
	};

	if ( _is_objective ) then {
		sectors_allSectors pushback _x;
	};
} foreach allMapMarkers;
