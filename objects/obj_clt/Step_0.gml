// Faz o objeto ir para baixo
vel_y = layer_get_vspeed("Background");
vspeed = vel_y;

// Destroi a instancia do objeto quando sai da room por baixo
if (y > room_height + 32)
{
	instance_destroy();
}