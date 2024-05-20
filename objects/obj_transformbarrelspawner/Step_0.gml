if ((!(place_meeting(x, y, obj_transformbarrel))) && (!instance_exists(obj_transformbarrel)) && (!point_in_camera(x, y, view_camera[0], 50)))
    instance_create(x, y, obj_transformbarrel)

