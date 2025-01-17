if (fade > 1)
{
    if (room != obj_player.targetRoom)
        room_goto(obj_player.targetRoom)
}

if fadein
	fade -= 0.075
else if !fadein
	fade += 0.075
	
with (obj_player)
{
	other.x = x
	other.y = y
	
    if (other.fadein && place_meeting(x, y, obj_door))
    {
        state = states.comingoutdoor
        image_index = 0
    }
}

if (fadein && fade < 0)
    instance_destroy()

