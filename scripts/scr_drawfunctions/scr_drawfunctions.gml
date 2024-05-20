/// @description Sets the blend mode for drawing.
/// @param mode The blend mode constant to set to 
function draw_set_blend_mode(argument0)
{
	gpu_set_blendmode(argument0)
}

function draw_sprite_grid()
{
    if (!sprite_exists(sprite_index))
        return;
    for (var i = 0; i < image_xscale; i++)
    {
        for (var j = 0; j < image_yscale; j++)
            draw_sprite_ext(sprite_index, image_index, (x + (i * sprite_get_width(sprite_index))), (y + (j * sprite_get_height(sprite_index))), 1, 1, image_angle, image_blend, image_alpha)
    }
}