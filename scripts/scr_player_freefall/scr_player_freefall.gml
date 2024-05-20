function scr_player_freefall()
{
	input_get()
	movespeed = 0
	hsp = 0
	landAnim = true
	sprite_index = spr_player_freefall
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!(place_meeting(x, (y + 1), obj_destructibles))) && (!(input_buffer_jump < 8)))
	{
	    state = states.freefallland
	    jumpAnim = true
	    jumpstop = 0
	    with (obj_baddie)
	    {
	        if point_in_camera(x, y, view_camera[0])
	        {
	            vsp = -7
	            hsp = 0
	        }
	    }
	    with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }
	    combo = 0
	    bounce = 0
	    image_index = 0
	    with (instance_create(x, (y + 35), obj_bangeffect))
	        image_xscale = obj_player.xscale
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    sound_play(sfx_freefallland, true, soundtype.stereo)
	}
	image_speed = 0.35
	perform_collisions()
}
