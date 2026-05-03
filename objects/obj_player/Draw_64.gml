///@description input mobile

if (global.mobile == false) { exit }

//esquerda
draw_sprite_ext(spr_setinha_esquerda, 0, 60, 480, 1, 1, 0, c_white, 1);

//direita
draw_sprite_ext(spr_setinha_direita, 0, 300, 480, 1, 1, 0, c_white, 1);

//cima
draw_sprite_ext(spr_setinha_cima, 0, 200, 340, 1, 1, 0, c_white, 1);

//baixo
draw_sprite_ext(spr_setinha_baixo, 0, 200, 580, 1, 1, 0, c_white, 1);

//botão de correr
draw_sprite_ext(spr_botao_corre, 0, 1000, 320, 2, 2, 0, c_white, 1);