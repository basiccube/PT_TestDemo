function scr_player_barrelbump()
{
	if grounded
	{
	    state = states.barrel
		sprite_index = spr_player_barrelidle
	    image_index = 0
	}
	
	if place_meeting(x, y, obj_water2)
	{
	    state = states.barrelfloat
	    image_index = 0
	}
	
	sprite_index = spr_player_barrelfall
	image_speed = 0.35
	
	if place_meeting(x, y, obj_water2)
	    vsp -= 1
}
