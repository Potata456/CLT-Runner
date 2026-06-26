// Só reseta o alarme para criar mais instancias se a velocidade da room é maior do que 0
if (layer_get_vspeed("Background") == 0) exit;

// Vai para o canto direito da tela
x = 148;
// Ajusta seu angulo para não ficar de cabeça para baixo
image_angle = 180;
// Aponta para a direção certa
image_yscale = -1.9;