///@description Spawn do inimigo
//inimigo é criado
instance_create_layer(x, y, "Inimigo", obj_inimigo);

//o tempo de spawn vai variar de 20 a 40 segundos

//aleatorizando de verdade o tempo
randomise();
var _tempo = irandom_range(20, 40);
alarm[0] = game_get_speed(gamespeed_fps) * _tempo;