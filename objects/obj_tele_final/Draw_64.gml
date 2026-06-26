draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_pontos);

// Recorde
draw_text(157, 200, "Recorde: ");
draw_text(157, 230, global.recorde);


// POntuação
draw_text(157, 270 + 50, "Pontuação: ");
draw_text(157, 350, global.pontos);

draw_set_halign(fa_left);
draw_set_valign(fa_top);