draw_sprite(faceSprite, -1, 120, 80)
draw_sprite(speedbarSprite, speedbarIndex, 120, 120)

font = font_add_sprite(spr_numbers, 48, 0, -10)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_text(190, 65, string(global.collect))

if global.key
    draw_sprite(spr_key, -1, 180, 30)
draw_sprite(spr_inv, -1, 180, 30)

