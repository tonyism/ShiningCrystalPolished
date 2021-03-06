const_value set 2
	const ROUTE2_BUG_CATCHER1
	const ROUTE2_BUG_CATCHER2
	const ROUTE2_BUG_CATCHER3
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2
	const ROUTE2_FRUIT_TREE

Route2_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerBug_catcherRob:
	trainer EVENT_BEAT_BUG_CATCHER_ROB, BUG_CATCHER, ROB, Bug_catcherRobSeenText, Bug_catcherRobBeatenText, 0, Bug_catcherRobScript

Bug_catcherRobScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1ac34d
	waitbutton
	closetext
	end

TrainerBug_catcherEd:
	trainer EVENT_BEAT_BUG_CATCHER_ED, BUG_CATCHER, ED, Bug_catcherEdSeenText, Bug_catcherEdBeatenText, 0, Bug_catcherEdScript

Bug_catcherEdScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1ac3cf
	waitbutton
	closetext
	end

TrainerBug_catcherDoug:
	trainer EVENT_BEAT_BUG_CATCHER_DOUG, BUG_CATCHER, DOUG, Bug_catcherDougSeenText, Bug_catcherDougBeatenText, 0, Bug_catcherDougScript

Bug_catcherDougScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1ac423
	waitbutton
	closetext
	end

Route2Sign:
	jumptext Route2SignText

MapRoute2Signpost1Script:
	jumptext UnknownText_0x1ac49f

Route2Carbos:
	itemball CARBOS

Route2Elixer:
	itemball ELIXER

FruitTreeScript_0x1ac306:
	fruittree FRUITTREE_ROUTE_2

Bug_catcherRobSeenText:
	text "My bug #mon are"
	line "tough. Prepare to"
	cont "lose!"
	done

Bug_catcherRobBeatenText:
	text "I was whipped…"
	done

UnknownText_0x1ac34d:
	text "I'm going to look"
	line "for stronger bug"
	cont "#mon."
	done

Bug_catcherEdSeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

Bug_catcherEdBeatenText:
	text "Ouch, ouch, ouch!"
	done

UnknownText_0x1ac3cf:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done

Bug_catcherDougSeenText:
	text "Why don't girls"
	line "like bug #mon?"
	done

Bug_catcherDougBeatenText:
	text "No good!"
	done

UnknownText_0x1ac423:
	text "Bug #mon squish"
	line "like plush toys"

	para "when you squeeze"
	line "their bellies."

	para "I love how they"
	line "feel!"
	done

Route2SignText:
	text "Route 2"

	para "Viridian City -"
	line "Pewter City"
	done

UnknownText_0x1ac49f:
	text "Diglett's Cave"
	done

Route2_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 8
	warp_def $f, $f, 1, ROUTE_2_NUGGET_SPEECH_HOUSE
	warp_def $1f, $f, 3, ROUTE_2_GATE
	warp_def $1b, $10, 1, ROUTE_2_GATE
	warp_def $1b, $11, 2, ROUTE_2_GATE
	warp_def $7, $c, 3, DIGLETTS_CAVE
	warp_def $21, $5, 3, VIRIDIAN_FOREST_VIRIDIAN_GATE
	warp_def $9, $1, 3, VIRIDIAN_FOREST_PEWTER_GATE
	warp_def $9, $2, 4, VIRIDIAN_FOREST_PEWTER_GATE

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 51, 7, SIGNPOST_READ, Route2Sign
	signpost 9, 11, SIGNPOST_READ, MapRoute2Signpost1Script

.PersonEvents:
	db 6
	person_event SPRITE_BUG_CATCHER, 45, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 5, TrainerBug_catcherRob, -1
	person_event SPRITE_BUG_CATCHER, 4, 6, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerBug_catcherEd, -1
	person_event SPRITE_BUG_CATCHER, 40, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerBug_catcherDoug, -1
	person_event SPRITE_POKE_BALL, 2, 19, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	person_event SPRITE_POKE_BALL, 50, 14, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
	person_event SPRITE_FRUIT_TREE, 11, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FruitTreeScript_0x1ac306, -1
