Route22_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "#mon League"

	para "Victory Road"
	line "Entrance"
	done

Route22_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $5, $d, 1, VICTORY_ROAD_GATE

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 7, 15, SIGNPOST_READ, VictoryRoadEntranceSign

.PersonEvents:
	db 0
