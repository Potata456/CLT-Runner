vel_y = layer_get_vspeed("Background");
vspeed = vel_y;

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