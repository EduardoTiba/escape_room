//se o jogador não puder perder, então ele não pode afetá-lo
if (global.perde_player == false) { exit }

//não tem mais as chaves
global.chave1 = false;
global.chave2 = false;
global.chave3 = false;

//e manda o jogador para a room que instrui ele sobre o bicho
room_goto(rm_instrucoes_inimigo);