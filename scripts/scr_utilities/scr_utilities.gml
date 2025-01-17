///@param x
///@param y
///@param obj
function instance_create(_x, _y, _obj)
{
	var inst = instance_create_depth(_x, _y, 0, _obj)
	with (inst)
	{
		if instance_exists(obj_light)
			image_blend = c_black
	}
	
	return inst;
}

///@param x
///@param y
///@param camera
///@param xpadding
function point_in_camera(_x, _y, _camera, _xpad = 0)
{
	var cam_x = camera_get_view_x(_camera)
	var cam_y = camera_get_view_y(_camera)
	var cam_w = camera_get_view_width(_camera)
	var cam_h = camera_get_view_height(_camera)
	
	return point_in_rectangle(_x, _y, cam_x - _xpad, cam_y, cam_x + cam_w + _xpad, cam_y + cam_h);
}