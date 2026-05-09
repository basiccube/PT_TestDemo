function scr_player_mach2()
{
	hsp = (xscale * movespeed)
	movespeed = (in_water ? 7 : 10)
	machslideAnim = false
	
	if keyJump.pressed
	    input_buffer_jump = 0
	
	if (!keyDash.held && grounded)
	{
	    state = states.machslide
	    image_index = 0
	    mach2 = 35
	}
	
	if (keyDown.held && grounded)
	{
	    sound_play(sfx_slide, false, soundtype.stereo)
	    machhitAnim = false
	    state = states.crouchslide
	}
	
	if (!keyJump.held && !jumpstop && vsp < 0.5)
	{
	    vsp /= 2
	    jumpstop = true
	}
	if (grounded && vsp > 0)
	    jumpstop = false
	
	if (input_buffer_jump < 8 && grounded && keyDash.held)
	    vsp = -7.5
	
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	    player_bump()
	
	if place_meeting(x, y + 1, obj_water)
	{
		repeat (4)
			instance_create(x - (xscale * 30), y + 40, obj_waterdrop)
	}
	
	if grounded
		sound_play(sfx_mach2, true, soundtype.player)
	
	if machhitAnim
		sprite_index = spr_player_machhit
	else
		sprite_index = spr_player_mach
	
	if (color_get_value(image_blend) >= 220)
		create_mach2effect(x, y, sprite_index, image_index - 1)
	if (!instance_exists(obj_dashcloud) && grounded && !place_meeting(x, y + 1, obj_water))
	    instance_create(x, y, obj_dashcloud)
	
	image_speed = (in_water ? 0.35 : 0.6)
}
