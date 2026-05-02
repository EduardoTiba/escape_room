///@description Indo ao destino configurado
room_goto(destino);

//se a room for da instrução sobre o inimigo e clicar nesse botão
//então deve tornar false que o player perdeu
if (room == rm_instrucoes_inimigo) { global.perdeu = false }