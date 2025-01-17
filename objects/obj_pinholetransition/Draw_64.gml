if !surface_exists(surf)
	surf = surface_create(960, 540)

surface_set_target(surf)
draw_rectangle_color(0, 0, 960, 540, c_black, c_black, c_black, c_black, false)

gpu_set_blendmode(bm_subtract)
draw_sprite_ext(spr_pinholetransition, 0, x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]), 20 * (1 - fade), 20 * (1 - fade), 0, c_white, 1)
gpu_set_blendmode(bm_normal)

surface_reset_target()

draw_surface(surf, 0, 0)