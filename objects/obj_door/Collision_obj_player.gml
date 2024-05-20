with (obj_player)
{
    if (state == states.normal && key_up && y == (other.y + 50))
    {
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        other.visited = 1
        image_index = 0
        state = states.door
        instance_create(x, y, obj_doortransition)
    }
}

