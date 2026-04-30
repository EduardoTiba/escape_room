#region Movimento
//pegando os inputs
var _right	= keyboard_check(ord("D")) or keyboard_check(vk_right);
var _left	= keyboard_check(ord("A")) or keyboard_check(vk_left);
var _down	= keyboard_check(ord("S")) or keyboard_check(vk_down);
var _up		= keyboard_check(ord("W")) or keyboard_check(vk_up);

//valores da velocidade
hsp = (_right - _left) * vel;
vsp = (_down - _up) * vel;

//código de movimentação e colisão
move_and_collide(hsp, vsp, colisores);

#endregion

#region Animações horizontais
if (hsp < 0) //Esquerda
{
	sprite_index = animacoes[0];
	image_speed = anim_vel;
}
else
if (hsp > 0) //Direita
{
	sprite_index = animacoes[1];
	image_speed = anim_vel;
}
else 
if (hsp == 0)
{
	if (sprite_index == animacoes[0]) { sprite_index = estatico[0] }
	else if (sprite_index == animacoes[1]) { sprite_index = estatico[1] }
}

#endregion

#region Animações Verticais

if (vsp < 0) //Para cima
{
	sprite_index = animacoes[2];
	image_speed	 = anim_vel;
} 
else
if (vsp > 0) //Para baixo
{
	sprite_index = animacoes[3];
	image_speed  = anim_vel;
}
else
if (vsp == 0)
{
	if (sprite_index == animacoes[2]) { sprite_index = estatico[2] }
	else if (sprite_index == animacoes[3]) { sprite_index = estatico[3] }
}

#endregion



//impossibilitando do player perder se estiver em colisão com o hide point
if (place_meeting(x, y, obj_hide)) { global.perde_player = false }
else { global.perde_player = true }

//sinalizando que o inimigo está vindo
if (global.inimigo_spawn == true) { aviso_spawn = true }
else{ aviso_spawn = false }