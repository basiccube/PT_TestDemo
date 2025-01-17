function scr_player_mach1()
{
	if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
	{
		mach2 = 0
		state = states.normal
		movespeed = 0
	}
	
	if ((movespeed <= 5 && !in_water) || (movespeed <= 2 && in_water))
	    movespeed += 0.35
	
	landAnim = false
	machhitAnim = false
	hsp = floor(xscale * movespeed)
	
	if (keyJump.pressed && grounded && keyDash.held)
	{
	    momemtum = 1
	    vsp = -9
	    state = states.jump
	    jumpAnim = true
	    image_index = 0
	}
	
	if grounded
	{
	    if (mach2 < 35)
	        mach2++
	    if (mach2 >= 35)
	    {
			flash = true
	        state = states.mach2
	        instance_create(x, y, obj_jumpdust)
	    }
	}
	
	if !grounded
	{
	    momemtum = 1
	    state = states.jump
	    jumpAnim = false
	    image_index = 0
	}
	
	if (!keyDash.held && grounded)
	{
	    state = states.normal
	    image_index = 0
	    mach2 = 0
	    machslideAnim = true
	}
	if keyDown.held
	{
	    sound_play(sfx_slide, false, soundtype.stereo)
	    state = states.crouchslide
	    mach2 = 0
	}
	
	sound_play(sfx_mach1, true, soundtype.player)
	sprite_index = spr_player_mach
	if !in_water
		image_speed = 0.35
	else
		image_speed = 0.2
	
	if (!instance_exists(obj_dashcloud) && !place_meeting(x, y, obj_water2) && grounded)
	    instance_create(x, y, obj_dashcloud)
}
