vspeed = vsp;

//Se o bloco estiver subindo, então o frame deve ser o número 1
if (vsp < 0) { image_index = 1 }
else if (vsp > 0) { image_index = 0 }