const_value set 2
	const BILLSHOUSE_GRAMPS

BillsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

GrampsScript_0x189538:
	faceplayer
	opentext
	checkevent EVENT_GAVE_KURT_APRICORNS
	iftrue .JustShowedSomething
	checkevent EVENT_GOT_SHINY_STONE_FROM_BILLS_GRANDPA
	iftrue .GotShinyStone
	checkevent EVENT_MET_BILLS_GRANDPA
	iftrue .MetGrandpa
	writetext BillsGrandpaIntroText
	buttonsound
	setevent EVENT_MET_BILLS_GRANDPA
.MetGrandpa:
	checkevent EVENT_SHOWED_TOGEPI_TO_BILLS_GRANDPA
	iftrue .ShowedTogepi
	checkevent EVENT_SHOWED_MURKROW_TO_BILLS_GRANDPA
	iftrue .ShowedMurkrow
	checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	iftrue .ShowedOddish
	checkevent EVENT_SHOWED_JIGGLYPUFF_TO_BILLS_GRANDPA
	iftrue .ShowedJigglypuff
	checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	iftrue .ShowedPichu
	checkevent EVENT_SHOWED_GROWLITHE_TO_BILLS_GRANDPA
	iftrue .ShowedGrowlithe
	checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	iftrue .ShowedStaryu
	checkevent EVENT_SHOWED_BELLSPROUT_TO_BILLS_GRANDPA
	iftrue .ShowedBellsprout
	checkevent EVENT_SHOWED_KANGASKHAN_TO_BILLS_GRANDPA
	iftrue .ShowedKangaskhan
	writetext BillsGrandpaKangaskhanText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal KANGASKHAN, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_KANGASKHAN_TO_BILLS_GRANDPA
	jump .ShowedKangaskhan

.GotEverstone:
	writetext BillsGrandpaBellsproutText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal BELLSPROUT, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_BELLSPROUT_TO_BILLS_GRANDPA
	jump .ShowedBellsprout

.GotLeafStone:
	writetext BillsGrandpaStaryuText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal STARYU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	jump .ShowedStaryu

.GotWaterStone:
	writetext BillsGrandpaGrowlitheText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal GROWLITHE, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GROWLITHE_TO_BILLS_GRANDPA
	jump .ShowedGrowlithe

.GotFireStone:
	writetext BillsGrandpaPichuText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal PICHU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	jump .ShowedPichu

.GotThunderstone:
	writetext BillsGrandpaJigglypuffText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal JIGGLYPUFF, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_JIGGLYPUFF_TO_BILLS_GRANDPA
	jump .ShowedJigglypuff

.GotMoonStone:
	writetext BillsGrandpaOddishText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal ODDISH, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	jump .ShowedOddish

.GotSunStone:
	writetext BillsGrandpaMurkrowText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal MURKROW, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_MURKROW_TO_BILLS_GRANDPA
	jump .ShowedMurkrow

.GotDuskStone:
	writetext BillsGrandpaTogepiText
	buttonsound
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse .SaidNo
	if_not_equal TOGEPI, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_TOGEPI_TO_BILLS_GRANDPA
	jump .ShowedTogepi

.ShowedKangaskhan:
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotEverstone
	scall .ReceiveItem
	verbosegiveitem EVERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedBellsprout:
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue .GotLeafStone
	scall .ReceiveItem
	verbosegiveitem LEAF_STONE
	iffalse .BagFull
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedStaryu:
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue .GotWaterStone
	scall .ReceiveItem
	verbosegiveitem WATER_STONE
	iffalse .BagFull
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedGrowlithe:
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue .GotFireStone
	scall .ReceiveItem
	verbosegiveitem FIRE_STONE
	iffalse .BagFull
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedPichu:
	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotThunderstone
	scall .ReceiveItem
	verbosegiveitem THUNDERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedJigglypuff:
	checkevent EVENT_GOT_MOON_STONE_FROM_BILLS_GRANDPA
	iftrue .GotMoonStone
	scall .ReceiveItem
	verbosegiveitem MOON_STONE
	iffalse .BagFull
	setevent EVENT_GOT_MOON_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedOddish:
	checkevent EVENT_GOT_SUN_STONE_FROM_BILLS_GRANDPA
	iftrue .GotSunStone
	scall .ReceiveItem
	verbosegiveitem SUN_STONE
	iffalse .BagFull
	setevent EVENT_GOT_SUN_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedMurkrow:
	checkevent EVENT_GOT_DUSK_STONE_FROM_BILLS_GRANDPA
	iftrue .GotDuskStone
	scall .ReceiveItem
	verbosegiveitem DUSK_STONE
	iffalse .BagFull
	setevent EVENT_GOT_DUSK_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_GAVE_KURT_APRICORNS
	closetext
	end

.ShowedTogepi:
	scall .ReceiveItem
	verbosegiveitem SHINY_STONE
	iffalse .BagFull
	setevent EVENT_GOT_SHINY_STONE_FROM_BILLS_GRANDPA
	closetext
	end

.ExcitedToSee:
	writetext BillsGrandpaExcitedToSeeText
	buttonsound
	end

.SaidNo:
	writetext BillsGrandpaYouDontHaveItTextText
	waitbutton
	closetext
	end

.CorrectPokemon:
	writetext BillsGrandpaShownPokemonText
	buttonsound
	end

.ReceiveItem:
	writetext BillsGrandpaTokenOfAppreciationText
	buttonsound
	end

.JustShowedSomething:
	writetext BillsGrandpaComeAgainText
	waitbutton
	closetext
	end

.GotShinyStone:
	writetext BillsGrandpaShownAllThePokemonText
	waitbutton
	closetext
	end

.WrongPokemon:
	writetext BillsGrandpaWrongPokemonText
	waitbutton
	closetext
	end

.BagFull:
	closetext
	end

BillsGrandpaIntroText:
	text "Hm? You know Bill?"
	line "He's my grandson."

	para "He's in Johto. He"
	line "does something"

	para "with PCs, so I'm"
	line "house-sitting."
	done

BillsGrandpaAskToSeeMonText:
	text "If you have that"
	line "#mon, may I see"
	cont "it, please?"
	done

BillsGrandpaExcitedToSeeText:
	text "You will show me?"
	line "How good of you!"
	done

BillsGrandpaYouDontHaveItTextText:
	text "You don't have it?"
	line "That's too bad…"
	done

BillsGrandpaShownPokemonText:
	text "Ah, so that is"
	line "@"
	text_from_ram StringBuffer3
	text "?"

	para "Isn't it cute!"
	line "That's so kind of"
	cont "you."
	done

BillsGrandpaTokenOfAppreciationText:
	text "Thanks!"

	para "This is a token of"
	line "my appreciation."
	done

BillsGrandpaComeAgainText:
	text "Come visit again"
	line "sometime."
	done

BillsGrandpaShownAllThePokemonText:
	text "Thanks for showing"
	line "me so many cute"
	cont "#mon."

	para "I really enjoyed"
	line "myself. I'm glad"

	para "I've lived such a"
	line "long life."
	done

BillsGrandpaWrongPokemonText:
	text "Hm?"

	para "That's not the"
	line "#mon that I was"
	cont "told about."
	done

BillsGrandpaKangaskhanText:
	text "My grandson Bill"
	line "told me about a"

	para "#mon that has a"
	line "belly pouch."
	done

BillsGrandpaTogepiText:
	text "Do you know of a"
	line "#mon that has a"

	para "shell covered in"
	line "red and blue"
	cont "triangles?"

	para "It's supposed to"
	line "be a symbol of"
	cont "good luck."
	done

BillsGrandpaMurkrowText:
	text "Do you know of a"
	line "bird #mon that"

	para "has a crooked"
	line "yellow beak and"
	cont "black feathers?"

	para "I heard that it"
	line "appears at night."

	para "I would quite"
	line "like to see it."
	done

BillsGrandpaOddishText:
	text "Ah, my grandson"
	line "mentioned a round,"

	para "blue #mon that"
	line "has leaves growing"
	cont "on its head."
	done

BillsGrandpaJigglypuffText:
	text "Bill told me about"
	line "a pink #mon"

	para "with a hypnotic"
	line "singing voice."
	done

BillsGrandpaBellsproutText:
	text "My grandson Bill"
	line "mentioned a green"

	para "#mon that walks"
	line "on its roots."
	done

BillsGrandpaStaryuText:
	text "Do you know of a"
	line "sea #mon that"

	para "has a red sphere"
	line "in its body?"

	para "You know, the one"
	line "that's shaped like"
	cont "a star?"

	para "I heard that it"
	line "appears at night."

	para "I would surely"
	line "like to see it."
	done

BillsGrandpaGrowlitheText:
	text "Bill told me about"
	line "a #mon that is"

	para "very loyal to its"
	line "trainer."

	para "It's supposed to"
	line "Roar well."
	done

BillsGrandpaPichuText:
	text "Do you know that"
	line "hugely popular"
	cont "#mon?"

	para "The #mon that"
	line "has a yellow body"
	cont "and red cheeks."

	para "I would love to"
	line "see what it looks"

	para "like before it"
	line "evolves."
	done

BillsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 1, ROUTE_25
	warp_def $7, $3, 1, ROUTE_25

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_GRAMPS, 3, 2, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GrampsScript_0x189538, -1
