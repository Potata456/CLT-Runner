// Faz o objeto ir para baixo
vel_y = layer_get_vspeed("Background");
vspeed = vel_y;

// Destroi a instancia do objeto quando sai da room por baixo
if (y > room_height + 32)
{
	instance_destroy();
}

// Troca a imagem de acordo com a ima_atual
if (ima_atual == 0) // Batata frita
{
	sprite_index = spr_batata;
	pontos = 5;
}
else if (ima_atual == 1) // Coxinha
{
	sprite_index = spr_coxinha;
	pontos = 10;
}
else if (ima_atual == 2) // Chocolate
{
	sprite_index = spr_chocolate;
	pontos = 20;
}
else if (ima_atual == 3) // Hamburg
{
	sprite_index = spr_hamburg;
	pontos = 30;
}