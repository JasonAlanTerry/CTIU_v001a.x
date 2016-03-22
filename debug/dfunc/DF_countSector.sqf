/* Sector Count */

_total_sectors = count sectors_allSectors;
_total_taken = count sectors_taken;
_total_opfor = count sectors_opfor;
_total_primary = count sectors_primary;
_total_secondary = count sectors_secondary;
_total_military = count sectors_military;
_total_intel = count sectors_intel;
_total_resource = count sectors_resource;

_t1 = str _total_sectors;
_t2 = str _total_taken;
_t3 = str _total_opfor;
_t4 = str _total_primary;
_t5 = str _total_secondary;
_t6 = str _total_military;
_t7 = str _total_intel;
_t8 = str _total_resource;

hint format ["%1 TS, %2 TK, %3 OP, %4 PR, %5 SC, %6 ML, %7 IN, %8 RE", _t1, _t2, _t3, _t4, _t5, _t6, _t7, _t8]