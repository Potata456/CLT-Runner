// Configurando o ponto de origem do texto e a fonte
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_pontos);

// Variáveis para o controle da posição do texto do placar de pontos
var _x = 157;
var _y = 20;

// Desenha uma sombra breta em baixo do número de pontos
// Para ser mais legível
draw_set_colour(c_black);
draw_text(_x, _y + 3, global.pontos);

// Desenha o número de pontos em branco
draw_set_colour(c_white);
draw_text(_x, _y, global.pontos);

// Reseta as configurações do ponto do origem e a fonte
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);

// Debug para testa a aceleração do jogo e a diminuição do tempo de spawn
//draw_text(35, 10, tempo_spawn);
//draw_text(35, 30, global.layer_vel_v);