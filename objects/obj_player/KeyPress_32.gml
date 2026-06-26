if (instance_exists(obj_tele_final))
{
	// Reseta os pontos reseta a velocidade vertical da room
	global.pontos = 0;
	global.layer_vel_v = 1;

	// Reseta o jogo
	room_restart();
}