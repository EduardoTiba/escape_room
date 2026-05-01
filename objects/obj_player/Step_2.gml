//código de movimentação e colisão
move_and_collide(hsp, vsp, colisores);

//Se o alpha for 0 então o jogador é direcionado para a tela de gameover
if (image_alpha <= 0) { room_goto(rm_menu) }
