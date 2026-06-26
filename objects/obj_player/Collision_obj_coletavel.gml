// Aumneta o número de pontos
global.pontos += other.pontos;

audio_play_sound(snd_coletavel, 100, false);

// Destroi o coletavel
instance_destroy(other);