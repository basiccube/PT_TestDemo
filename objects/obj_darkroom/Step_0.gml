if surface_exists(surf)
{
    surface_set_target(surf)
    draw_set_color(c_black)
    draw_set_alpha(0.5)
    draw_rectangle(0, 0, room_width, room_height, false)
	draw_set_color(c_white)
    draw_set_alpha(1)
    surface_reset_target()
}
else
{
    surf = surface_create(room_width, room_height)
    surface_set_target(surf)
    draw_clear_alpha(c_black, 0)
    surface_reset_target()
}