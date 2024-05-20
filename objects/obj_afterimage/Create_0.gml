enum afterimage
{
	afterimage,
	mach2effect,
	enum_length
}

depth = -4
global.afterimage_list = ds_list_create()
alpha = array_create(afterimage.enum_length, 1)
