function init_enums()
{
	enum states
	{
	    normal = (0 << 0),
	    stunned = (10 << 0),
	    highjump = (11 << 0),
	    grind = (24 << 0),
	    punch = (26 << 0),
	    runonball = (68 << 0),
	    boulder = (67 << 0),
	    keyget = (35 << 0),
	    tackle = (36 << 0),
	    slipnslide = (39 << 0),
	    ladder = (38 << 0),
	    jump = (37 << 0),
	    victory = (43 << 0),
	    comingoutdoor = (40 << 0),
	    crouch = (45 << 0),
	    crouchjump = (46 << 0),
	    crouchslide = (47 << 0),
	    mach1 = (48 << 0),
	    mach2 = (49 << 0),
	    machslide = (50 << 0),
	    bump = (51 << 0),
	    hurt = (52 << 0),
	    freefall = (53 << 0),
	    freefallland = (56 << 0),
	    hang = (54 << 0),
	    door = (57 << 0),
	    barrelnormal = (63 << 0),
	    barrelfall = (62 << 0),
	    barrelmach1 = (61 << 0),
	    barrelmach2 = (60 << 0),
	    barrelfloat = (59 << 0),
	    barrelcrouch = (58 << 0),
	    barrelslipnslide = (64 << 0),
	    barrelroll = (65 << 0),
	    current = (66 << 0),
	}
	
	enum soundtype
	{
		normal,
		stereo,
		player,
	}
}