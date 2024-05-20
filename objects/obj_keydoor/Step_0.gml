if (obj_player.state == states.normal && obj_player.key_up && global.key_inv == 1 && place_meeting(x, y, obj_player))
{
    sound_play(sfx_land, false, soundtype.stereo)
    obj_player.state = states.victory
    obj_player.image_index = 0
    image_index = 0
    sprite_index = spr_doorkeyopen
    image_speed = 0.35
    instance_create((x + 50), (y + 50), obj_lock)
	instance_destroy(obj_lighting)
	with (obj_music)
		audio_stop_sound(musicID)
	if (!instance_exists(obj_doortransitionend))
		instance_create(obj_player.x, obj_player.y, obj_doortransitionend)
    global.key_inv = 0
}
if (floor(image_index) == 2)
    image_speed = 0
//if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == states.victory)
//{
//    with (obj_player)
//    {
//        targetDoor = other.targetDoor
//        targetRoom = other.targetRoom
//    }
//}

