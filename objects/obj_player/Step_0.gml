//pegando os inputs
var _right	= keyboard_check(ord("D"));
var _left	= keyboard_check(ord("A"));
var _down	= keyboard_check(ord("S"));
var _up		= keyboard_check(ord("W"));
var _corre	= keyboard_check(vk_anykey) and keyboard_check(vk_shift);

//valores da velocidade
hsp = (_right - _left) * vel;
vsp = (_down - _up) * vel;

//código de movimentação e colisão
move_and_collide(hsp, vsp, all);

//aumentando a velociidade do player se _corre for verdadeiro
if (_corre == true) { vel = 6 }
else { vel = 2 }