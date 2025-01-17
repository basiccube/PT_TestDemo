with (obj_player)
{
    if (state == states.normal && keyUp.held && y == other.y + 50)
    {
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        image_index = 0
        state = states.door
		
		other.visited = true
        instance_create(x, y, obj_doortransition)
    }
}

