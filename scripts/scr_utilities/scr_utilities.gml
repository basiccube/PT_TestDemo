/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function instance_create(argument0, argument1, argument2)
{
	var inst = instance_create_depth(argument0, argument1, 0, argument2)
	with (inst)
	{
		if (instance_exists(obj_light))
			image_blend = c_black
	}
	return inst
}

/// @param x
/// @param y
/// @param camera
/// @param xpadding
function point_in_camera(argument0, argument1, argument2, argument3 = 0)
{
	var cam_x = camera_get_view_x(argument2)
	var cam_y = camera_get_view_y(argument2)
	var cam_w = camera_get_view_width(argument2)
	var cam_h = camera_get_view_height(argument2)
	return point_in_rectangle(argument0, argument1, cam_x - argument3, cam_y, (cam_x + cam_w) + argument3, (cam_y + cam_h));
}