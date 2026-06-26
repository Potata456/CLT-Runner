// Variáveis de controle da posição do spawn dos obstáculos
var _x = 32; // Já spawn por partão do lado esquerdo da tela
var _y = -32;

// Sorteio para saber se spawn sim ou não (3 e 4 - Não spawn nada) / (0, 1, 2 - Da spawn do obstáculo)
// Ou sejá 60% de chance de spawnar e 40% de não spawnar
var _sorteio_spawn_obs = irandom(4);

// Deu spawn!!!
if (_sorteio_spawn_obs >= 0 && _sorteio_spawn_obs <= 2)
{
	// Cria uma instancia do objeto clt
	var _obstaculo = instance_create_layer(_x, _y, "Obstaculos", obj_clt);
	
	// Sorteio para saber qual lado spawn esquerdo ou direito (False - esquerdo) / (true - Direito)
	var _sorteio_lado_obs = choose(false, true);
	
	if (_sorteio_lado_obs) // Lado direito
	{
		_obstaculo.x = 148;
		_obstaculo.image_yscale = -1.9;
		_obstaculo.image_angle = 180;
	}
	else // Lado Esquerda
	{
		_obstaculo.x = 32;
		_obstaculo.image_yscale = 1.9;
		_obstaculo.image_angle = 0;
	}
}
else // Falhou o spawn
{
	// Mensagem de debug
	//show_message("Não foi .__.");
}

alarm[0] = tempo_spawn_obs;