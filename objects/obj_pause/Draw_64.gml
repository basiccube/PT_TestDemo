if (pause == 1)
{
	draw_set_color(c_white)
	draw_set_alpha(1)
    draw_rectangle_color(0, 0, 960, 540, color, color, color, color, 0)
    draw_sprite_tiled(spr_pizzacollect, 0, x, y)
    vspeed = -1
    hspeed = 1
	draw_sprite(spr_retry, (selection == 0 ? -1 : 2), 280, 70)
	draw_sprite(spr_exit, (selection == 1 ? -1 : 2), 680, 70)
}