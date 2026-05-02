if (global.perdeu == true) //Fazendo o player ir sumindo após perder e cancelar seu movimento
{
	vel = 0; 
	image_alpha = lerp(image_alpha, 0, 0.1);
}
#region Movimento
//pegando os inputs
var _right	= keyboard_check(ord("D")) or keyboard_check(vk_right);
var _left	= keyboard_check(ord("A")) or keyboard_check(vk_left);
var _down	= keyboard_check(ord("S")) or keyboard_check(vk_down);
var _up		= keyboard_check(ord("W")) or keyboard_check(vk_up);
var _corre	= keyboard_check(vk_anykey) and (keyboard_check(vk_shift));

//valores da velocidade
hsp = (_right - _left) * vel;
vsp = (_down - _up) * vel;

//correndo
if (_corre == true) { vel = 2 }
else { vel = 1 }

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

#region Animações verticais

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
else { aviso_spawn = false }

//perdendo ao colidir com os inimigos
if (place_meeting(x, y, armadilhas)) { perdeu() }