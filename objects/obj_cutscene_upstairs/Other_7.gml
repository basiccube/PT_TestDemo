image_speed = 0
with (obj_player)
{
	visible = true
	state = states.door
	targetDoor = "A"
	targetRoom = other.targetRoom
	if !instance_exists(obj_fadeout)
		instance_create(x, y, obj_fadeout)
}
with (obj_camera)
	visible = true

global.collect = 0
global.key = false
global.shroomfollow = false
global.cheesefollow = false
global.tomatofollow = false
global.sausagefollow = false
global.pineapplefollow = false
instance_destroy(obj_pizzakinshroom)
instance_destroy(obj_pizzakincheese)
instance_destroy(obj_pizzakintomato)
instance_destroy(obj_pizzakinsausage)
instance_destroy(obj_pizzakinpineapple)
