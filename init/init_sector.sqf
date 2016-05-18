sectors_allSectors = []; // For Tracking Total sectors???
sectors_taken = []; // For Tracking Captured Sectors
sectors_opfor = []; // marker used to spawn opfor units semi-randomly
sectors_primary = []; // Group of ALl Primary Objectives
sectors_secondary = []; // Group of ALL Secondary Objecttives
sectors_military = []; // Group of ALL Military Objectives
sectors_intel = []; // Group of ALL Intel Objectives
sectors_resource = []; // Group of ALL Resource Objectives


{
	_isobjective = false; // Assure _isobjective starts as FALSE for checks
	_tempmarker = toArray _x;
  _tempmarker resize 11;

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
