MansionMons2:
	db $0A
	IF DEF(_RED)
		db 32,GROWLITHE
		db 34,KOFFING
		db 34,KOFFING
		db 30,PONYTA
		db 30,KOFFING
		db 32,PONYTA
		db 30,GRIMER
		db 28,PONYTA
		db 39,WEEZING
		db 37,MUK
	ELIF DEF(_BLUEJP)
		db 32, GROWLITHE
		db 34, GRIMER
		db 34, GRIMER
		db 30, PONYTA
		db 30, GRIMER
		db 32, PONYTA
		db 30, KOFFING
		db 28, PONYTA
		db 39, MUK
		db 37, WEEZING
	ELIF (DEF(_BLUE) || DEF(_GREEN))
		db 32,VULPIX
		db 34,GRIMER
		db 34,GRIMER
		db 30,PONYTA
		db 30,GRIMER
		db 32,PONYTA
		db 30,KOFFING
		db 28,PONYTA
		db 39,MUK
		db 37,WEEZING
	ENDC
	db $00
