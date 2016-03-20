/* 
SPAWN UNITS 

GET MARKER ARRAYS

LOAD MARKER ARRAYS INTO SPAWN SCRIPT LINES

PRAY?
*/
{
nul = [[sectors_primary],2,200,[true,false],[true,false,false],false,[6,6],[2,2],"default",nil,nil,_id] execVM "LV\militarize.sqf";
} forEach in sectors_primary

{
nul = [[sectors_ssecondary],2,200,[true,false],[true,false,false],false,[6,6],[2,2],"default",nil,nil,_id] execVM "LV\militarize.sqf";
} forEach in sectors_secondary

{
nul = [[sectors_military],2,200,[true,false],[true,false,false],false,[6,6],[2,2],"default",nil,nil,_id] execVM "LV\militarize.sqf";
} forEach in sectors_military

{
nul = [[sectors_intel],2,200,[true,false],[true,false,false],false,[6,6],[2,2],"default",nil,nil,_id] execVM "LV\militarize.sqf";
} forEach in sectors_intel

{
nul = [[sectors_resource],2,200,[true,false],[true,false,false],false,[6,6],[2,2],"default",nil,nil,_id] execVM "LV\militarize.sqf";
} forEach in sectors_resource

