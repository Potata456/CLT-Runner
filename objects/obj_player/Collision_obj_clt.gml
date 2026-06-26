// Cria a tela final de jogo se não tem uma
if (!instance_exists(obj_tele_final))
{
	instance_create_layer(87, 301, "Player", obj_tele_final);
	instance_create_layer(87, 550, "Player", obj_space);
}

// Passa a pontuação atual do player para o recorde
if (global.pontos > global.recorde)
{
	global.recorde = global.pontos;
}

// Faz o jogo parar
layer_vspeed("Background", 0);