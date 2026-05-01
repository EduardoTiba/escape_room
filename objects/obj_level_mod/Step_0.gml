//Se o player perdeu, então deve aparecer a mensagem de gameover 
if (global.perdeu == true) { mensagem = true } 
else { mensagem = false }

show_debug_message(global.perdeu);
show_debug_message(mensagem);