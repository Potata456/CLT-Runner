// Variáveis para controla a posição do spawn
var _x = 32; // Já spawn por partão do lado esquerdo da tela
var _y = -32;

// Sorteio para saber se spawn um obstaculo ou um coletável (3 e 4 - Spawn um coletável) / (0, 1, 2 - Spawn um obstáculo)
// Ou sejá 60% de chance de spawnar um obstáculo e 40% de spanar um coletável
var _sorteio_spawn = irandom(4);

// Sorteio para saber qual lado spawn esquerdo ou direito (False - esquerdo) / (true - Direito)
var _sorteio_lado = choose(false, true);

// Spawn dos dos obstáculos
if (_sorteio_spawn >= 0 && _sorteio_spawn <= 2)
{
	// Cria uma instancia do objeto clt
	var _obstaculo = instance_create_layer(_x, _y, "Obstaculos", obj_clt);
	
	if (_sorteio_lado) // Lado direito
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
else // Spawn dos coletáveis
{
	// Cria uma instancia do objeto coletável
	var _coletavel = instance_create_layer(_x, _y, "Coletaveis", obj_coletavel);
	
	// Sorteia qual vai ser o coletável da fez
	var _sort_col = irandom(3);
	
	// Avisa qual imagem o objeto vai ter para alterar seus pontos no proprio objeto
	_coletavel.ima_atual = _sort_col;
	
	if (_sorteio_lado) // Lado direito
	{
		_coletavel.x = 148;
		_coletavel.image_yscale = -1.9;
		_coletavel.image_angle = 180;
	}
	else // Lado esquerdo
	{
		_coletavel.x = 32;
		_coletavel.image_yscale = 1.9;
		_coletavel.image_angle = 0;
	}
}

// Reinicia o alarme
alarm[0] = tempo_spawn;