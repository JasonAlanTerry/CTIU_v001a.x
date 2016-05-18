enableSaving [ false, false ];

[] call compileFinal preprocessFileLineNumbers "init\init_sector.sqf";
[] call compileFinal preprocessFileLineNumbers "init\init_debug.sqf";
[] call compileFinal preprocessFileLineNumbers "init\init_LV.sqf";
[] call compileFinal preprocessFileLineNumbers "debug\trace_rounds.sqf";
[] call compileFinal preprocessFileLineNumbers "gameplay_constants.sqf";


systemChat "INIT SUCCESS?";

[player, [1,0,0,1], 3, 2, nil, 3] call hyp_fnc_traceFire;

// Werthles Headless Script Parameters v2.3
// 1. Repeating - true/Once - false,
// 2. Time between repeats (seconds),
// 3. Debug available for all - true/Just available for admin/host - false,
// 4. Advanced balancing - true/Simple balancing - false,
// 5. Delay before executing (seconds),
// 6. Additional syncing time between groups transferred to try to reduce bad unit transfer caused by desyncs (seconds)
// 7. Display an initial setup report after the first cycle, showing the number of units moved to HCs,
// 8. Addition phrases to look for when checking whether to ignore.
// Unit names, group names, unit's current transport vehicle, modules synced to units and unit class names will all be checked for these phrases
// Format:
// ["UnitName","GroupCallsignName","SupportProviderModule1","TypeOfUnit"]
// E.g. ["BLUE1","AlphaSquad","B_Heli_Transport_01_camo_F"] (including ""s)
// Specifying "B_Heli" would stop all units with that class type from transferring to HCs
// However, if you specify "BLUE1", "NAVYBLUE10" will also be ignored

// Setup HC
[true,30,false,false,30,5,true,[]] execVM "WerthlesHeadless.sqf";
