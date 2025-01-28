function scr_player_barrelfloat()
{
	move = (keyLeft.held + keyRight.held)
	hsp = (move * movespeed)
	vsp = 0
	
	if keyJump.pressed
	{
	    jumpstop = true
	    jumpAnim = true
		landAnim = false
		
	    state = states.jump
	    vsp = -9
		
	    with (instance_create(x, y + 16, obj_barrelfloat))
	        image_xscale = other.image_xscale
		
		sprite_index = spr_player_jump
	    image_index = 0
	}
	
	movespeed = 2.5
	if (move != 0)
	    xscale = move
	
	sprite_index = spr_player_barrelfloat
	image_speed = 0.35
	if place_meeting(x, y, obj_water2)
	    vsp -= 1
}
