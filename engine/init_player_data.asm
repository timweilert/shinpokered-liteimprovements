InitPlayerData:
InitPlayerData2:

	call Random
	ld a, [hRandomSub]
	ld [wPlayerID], a

	call Random
	ld a, [hRandomAdd]
	ld [wPlayerID + 1], a

	ld a, $ff
	ld [wUnusedD71B], a

	ld hl, wPartyCount
	call InitializeEmptyList
	ld hl, wNumInBox
	call InitializeEmptyList
	ld hl, wNumBagItems
	call InitializeEmptyList
	ld hl, wNumBoxItems
	call InitializeEmptyList

START_MONEY EQU $0500
    ; D347 D348 and D349 are the money addresses with D347 being the top portion of the 3 bytes. 
	ld hl, wPlayerMoney ; + 1 ; commenting out the +1
	; previously the code wrote $3000 to wPlayerMoney + 1, which is D347 + 1 == D348.
	; what this did in effect was shift the amount written to the 2nd and 3rd bytes of the 3 wPlayerMoney bytes
	; old way: 00 30 00, would give a beginning money of 3000
	; new way: 05 00 00, gives 50,000 money.
	; D347, MSB is 100,000's
	; D347, LSB is 10,000's 
	; D348, MSB is 1000's 
	; D348, LSB is 100's 
	; D349, MSB is 10's 
	; D349, LSB is 1's 
	; so in effect, the line ld hl, wPlayerMoney + X will determine which byte the code is addressing, 
	; where X = 0 (1st byte), 1 (2nd byte), 2 (3rd byte)
	; Since we're using the HL dark register we have 16 bits to work with, but this code could also be done 
	; with a single byte if you didn't care about the finer level of detail. 
	ld a, START_MONEY / $100
	ld [hld], a
	xor a
	ld [hli], a
	inc hl
	ld [hl], a

	ld [wMonDataLocation], a

	ld hl, wObtainedBadges
	ld [hli], a

	ld [hl], a

	ld hl, wPlayerCoins
	ld [hli], a
	ld [hl], a

	ld hl, wGameProgressFlags
	ld bc, wGameProgressFlagsEnd - wGameProgressFlags
	call FillMemory ; clear all game progress flags

	jp InitializeMissableObjectsFlags

InitializeEmptyList:
	xor a ; count
	ld [hli], a
	dec a ; terminator
	ld [hl], a
	ret
