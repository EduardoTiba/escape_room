var _right	= keyboard_check(ord("D"));
var _left	= keyboard_check(ord("A"));
var _down	= keyboard_check(ord("S"));
var _up		= keyboard_check(ord("W"));

hsp = (_right - _left) * vel;
vsp = (_down - _up) * vel;

move_and_collide(hsp, vsp, all);