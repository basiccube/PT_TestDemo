draw_sprite(faceSprite, -1, 120, 80)
draw_sprite(speedbarSprite, speedbarIndex, 120, 120)

draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_text(190, 65, global.collect)

if global.key
    draw_sprite(spr_key, -1, 180, 30)
draw_sprite(spr_inv, -1, 180, 30)

