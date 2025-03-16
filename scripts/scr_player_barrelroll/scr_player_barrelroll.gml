function scr_player_barrelroll()
{
	hsp = (xscale * movespeed)
	switch sprite_index
	{
		case spr_player_barrelmach:
			if grounded
			{
				if (movespeed <= 8)
					movespeed += 0.2
					
			    if (mach2 < 35)
			        mach2++
			    if (mach2 >= 35)
			    {
					sprite_index = spr_player_barrelslipnslide
			        image_index = 0
			    }
			}
			else
			{
			    state = states.barrelbump
			    image_index = 0
			    hsp = 0
			}
			
			if (!keyDash.held && grounded)
			{
			    state = states.barrel
				sprite_index = spr_player_barrelidle
			    image_index = 0
			}
			
			if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
			{
			    state = states.barrelbump
			    hsp = -2 * xscale
			    vsp = -2
			    image_index = 0
			    instance_create(x + (10 * xscale), y + 10, obj_bumpeffect)
			}
			
			image_speed = 0.35
			sound_play(sfx_mach1, true, soundtype.player)
			if (!instance_exists(obj_dashcloud) && grounded)
				instance_create(x, y, obj_dashcloud)
			break
		
		case spr_player_barrelslipnslide:
			if (movespeed < 10)
				movespeed += 0.1
				
			if (floor(image_index) == image_number - 1)
			{
			    sprite_index = spr_player_barrelroll
				image_index = 0
			    flash = true
			}
			
			image_speed = 0.35
			break
		
		case spr_player_barrelroll:
			movespeed = 10
			
			if (input_buffer_jump < 8 && grounded)
				vsp = -7
			if keyJump.pressed
				input_buffer_jump = 0
				
			if (check_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope))
			{
			    player_bump(-2, -2)
				repeat (10)
				{
					with (create_debris(x + random_range(-15, 15), y + random_range(-15, 15), spr_wooddebris))
					{
						hsp = random_range(-4, 4)
						vsp = random_range(-8, -6)
						rotate = true
					}
				}
			}
			
			if (color_get_value(image_blend) >= 220)
				create_mach2effect(x, y, sprite_index, image_index - 1)
			image_speed = abs(movespeed) / 25
			break
	}
}
