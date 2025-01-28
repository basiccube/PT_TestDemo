function scr_player_barrel()
{
	move = (keyLeft.held + keyRight.held)
	if (sprite_index == spr_player_barrelcrouch || sprite_index == spr_player_barrelfall)
		hsp = 0
	else
		hsp = (move * movespeed)
	
	if (keyDown.held && grounded && sprite_index != spr_player_barrelcrouch && move == 0)
	{
		sprite_index = spr_player_barrelcrouch
	    image_index = 0
	}
	else if (!keyDown.held && grounded && sprite_index == spr_player_barrelcrouch && floor(image_index) == image_number - 1)
	{
		sprite_index = spr_player_barrelidle
		image_index = 0
	}
	
	mach2 = 0
	movespeed = 2.5
	if (move != 0 && move == -xscale && grounded && sprite_index != spr_player_barrelcrouch)
		xscale = move
	
	if (sprite_index != spr_player_barrelcrouch)
	{
		if (move != 0)
			sprite_index = spr_player_barrelmove
		else
			sprite_index = spr_player_barrelidle
	}
	
	if (sprite_index == spr_player_barrelcrouch && floor(image_index) == image_number - 1)
		image_speed = 0
	else
		image_speed = 0.35
		
	if (keyDash.held && grounded && sprite_index != spr_player_barrelcrouch)
	{
	    movespeed = 0
		sprite_index = spr_player_barrelmach
		image_index = 0
	    state = states.barrelroll
	}
	
	if !grounded
	{
	    state = states.barrelbump
	    image_index = 0
	    hsp = 0
	}
	
	if place_meeting(x, y, obj_water2)
	    vsp -= 1
}
