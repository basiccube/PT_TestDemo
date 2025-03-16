if (instance_number(obj_afterimageManager) > 1)
{
	instance_destroy()
	exit;
}

depth = -4
global.afterimage_list = ds_list_create()
alpha = array_create(afterimage.enum_length, 1)
