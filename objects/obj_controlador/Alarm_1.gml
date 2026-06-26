// Aumenta a velocidade do jogo com um limite
if (global.layer_vel_v < 10)
{
	global.layer_vel_v += 0.5;
}
else 
{
	global.layer_vel_v = 10;
}

// Altera a velocidade vertical do background
layer_vspeed("Background", global.layer_vel_v);

// Debug para saber se o background está mais rápido
// show_message("Vel+: " + string(layer_get_vspeed("Background")));

// Diminui o tempo de spawn com um limite
if (tempo_spawn > 10)
{
	tempo_spawn -= 5;
}
else
{
	tempo_spawn = 10;
}
// Reinicia o alarme
alarm[1] = tempo_vel_v;