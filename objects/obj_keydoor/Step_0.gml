if (place_meeting(x, y, obj_player) && obj_player.state == states.normal && obj_player.keyUp.held && global.key)
{
    sound_play(sfx_land, false, soundtype.stereo)
    obj_player.state = states.victory
    obj_player.image_index = 0
	
    image_index = 0
    sprite_index = spr_doorkeyopen
    image_speed = 0.35
	
    instance_create(x + 50, y + 50, obj_lock)
	instance_destroy(obj_lighting)
	with (obj_music)
		audio_stop_sound(musicID)
	
	if !instance_exists(obj_doortransitionend)
		instance_create(obj_player.x, obj_player.y, obj_doortransitionend)
    global.key = false
}

if (floor(image_index) == image_number - 1)
    image_speed = 0

with (obj_player)
{
	if (floor(image_index) == image_number - 1 && state == states.victory)
	{
		if (other.targetRoom == -4)
		{
			if !audio_is_playing(sfx_victory)
				game_restart()
		}
		else
		{
		    targetDoor = "A"
		    targetRoom = other.targetRoom
			if !instance_exists(obj_fadeout)
				instance_create(x, y, obj_fadeout)
		}
	}
}

