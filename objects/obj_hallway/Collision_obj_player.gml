if (createdfadeout == 0)
{
    createdfadeout = 1
    instance_create(other.x, other.y, obj_fadeout)
}
with (obj_player)
{
    targetDoor = other.targetDoor
    targetRoom = other.targetRoom
	hallway = true
	hallwaydirection = other.image_xscale
}
