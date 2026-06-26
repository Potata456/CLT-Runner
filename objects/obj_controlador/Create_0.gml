// Variáveis de spawn dos Obstáculos e Coletáveis
// Tempo de spawn dos obstáculos
tempo_spawn = 60 * 2;

//Inicia o alarme de spawn
alarm[0] = tempo_spawn;

// Tempo para o jogo ficar mais rápido
tempo_vel_v = 60 * 5;

// Inicia o alarme do tempo do jogo
alarm[1] = 5;

// Para a musica se já estiver tocando e taca a musica
audio_stop_sound(snd_musica);
audio_play_sound(snd_musica, 1, true);