enableSaving [ false, false ];

[] call compileFinal preprocessFileLineNumbers "init\init_sector.sqf";
[] call compileFinal preprocessFileLineNumbers "init\init_debug.sqf";
[] call compileFinal preprocessFileLineNumbers "init\init_LV.sqf";
[] call compileFinal preprocessFileLineNumbers "debug\trace_rounds.sqf";
[] call compileFinal preprocessFileLineNumbers "gameplay_constants.sqf";


systemChat "INIT SUCCESS?";

[player, [1,0,0,1], 3, 2, nil, 3] call hyp_fnc_traceFire;





