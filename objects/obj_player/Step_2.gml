//código de movimentação e colisão
move_and_collide(hsp, vsp, colisores);

//Se o alpha for 0 então o jogador é direcionado para a tela de gameover, e 
//sua variável perdeu volta a ser false
if (image_alpha <= 0) 
{
	global.inimigo_spawn = false;
	global.perdeu = false;
	room_goto(rm_menu);
}
