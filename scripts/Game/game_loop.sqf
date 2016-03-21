/* While MISSION IS NOT COMPLETE, POPULATE OBJECTIVES? */


while (!VF_isMISSION_COMPLETE) do {

F_get_playerPos // Returns POS of player?
F_chk_objDistance // Checks if any objectives are within X? of ANY players? Returns a MARKER?
F_populateObj // Checks Obj TYPE and then populates via AISSP

}