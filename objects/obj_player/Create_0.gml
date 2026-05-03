//tamanho da janela
window_set_size(1280, 700);

//variáveis pra movimentação
vel = 1;
hsp = 0;
vsp = 0;
//pegando os inputs
right	= keyboard_check(ord("D")) or keyboard_check(vk_right);
left	= keyboard_check(ord("A")) or keyboard_check(vk_left);
down	= keyboard_check(ord("S")) or keyboard_check(vk_down);
up		= keyboard_check(ord("W")) or keyboard_check(vk_up);
corre	= keyboard_check(vk_anykey) and (keyboard_check(vk_shift));

//Array para animações
anim_vel	= 5;
animacoes	= [spr_guy_left, spr_guy_right, spr_guy_up, spr_guy_down];
estatico	= [spr_guy_left_static, spr_guy_right_static, spr_guy_up_static, spr_guy_static];

//Agrupando objetos que devem ter colisão com o player
colisores = [obj_inimigo, obj_parede, obj_parede_fundo, obj_porta, obj_salvador, obj_colisor_porta];

//agrupando as armadilhas
armadilhas = [obj_bloco_mov_hor, obj_bloco_mov_ver, obj_espinho_direita, obj_espinho_esquerda];

//O monstro ainda não vai spawnar
aviso_spawn = false;