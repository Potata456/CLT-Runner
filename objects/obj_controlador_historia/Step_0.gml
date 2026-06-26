// Sistema de troca de imagens
if (ima_atual == 0) // Pagina 1
{
	sprite_index = spr_page1;
}
else if (ima_atual == 1) // Pagina 2
{
	sprite_index = spr_page2;
}
else if (ima_atual == 2) // Pagina 3
{
	sprite_index = spr_page3;
}
else if (ima_atual == 4) // Pagina 4
{
	sprite_index = spr_page4;
}
else if (ima_atual >= 5) // Vai para a room do jogo
{
	room_goto(rm_jogo);
}