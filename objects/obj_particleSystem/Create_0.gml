if (instance_number(obj_particleSystem) > 1)
{
	instance_destroy()
	exit;
}

depth = -99
global.debris_list = ds_list_create()