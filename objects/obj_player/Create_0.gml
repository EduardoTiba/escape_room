//tamanho da janela
window_set_size(1280, 700);

//variáveis pra movimentação
vel = 1;
hsp = 0;
vsp = 0;

//Array para animações
anim_vel	= 5;
animacoes	= [spr_guy_left, spr_guy_right, spr_guy_up, spr_guy_down];
estatico	= [spr_guy_left_static, spr_guy_right_static, spr_guy_up_static, spr_guy_static];

//Agrupando objetos que devem ter colisão com o player
colisores = [obj_inimigo, obj_parede, obj_colisor];


//O monstro ainda não vai spawnar
aviso_spawn = false;