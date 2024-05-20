function scr_player_mach2()
{
	input_get()
	hsp = (xscale * movespeed)
	machslideAnim = true
	if (!in_water)
		movespeed = 10
	else
		movespeed = 7
	crouchslideAnim = true
	if key_jump
	    input_buffer_jump = 0
	if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = states.machslide
	    image_index = 0
	    mach2 = 35
	}
	if (key_down && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    sound_play(sfx_slide, false, soundtype.stereo)
	    machhitAnim = false
	    state = states.crouchslide
	}
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == false)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && place_meeting(x, (y + 1), obj_collisionparent) && key_attack)
	    vsp = -7.5
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	{
	    machhitAnim = false
	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	    sound_play(sfx_bump, true, soundtype.stereo)
	}
	else if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	{
	    machhitAnim = false
	    state = states.bump
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	    sound_play(sfx_bump, true, soundtype.stereo)
	}
	if place_meeting(x, (y + 1), obj_onewaywatersolid)
	{
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
		sound_play(sfx_mach2, true, soundtype.player)
	if (machhitAnim == false)
	    sprite_index = spr_player_mach
	if (machhitAnim == true)
	    sprite_index = spr_player_machhit
	if (color_get_value(image_blend) >= 220)
		create_mach2effect(x, y, sprite_index, image_index - 1)
	if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_collisionparent) && (!(place_meeting(x, (y + 1), obj_water))))
	    instance_create(x, y, obj_dashcloud)
	if (!in_water)
		image_speed = 0.6
	else
		image_speed = 0.35
	perform_collisions()
}
