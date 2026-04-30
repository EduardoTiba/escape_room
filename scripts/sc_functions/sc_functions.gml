//Função para efeito de sumir das chaves
function Efeito_coletado(){
	if (efeito == false and image_alpha >= 1) { exit }
//Efeito de expandir enquanto vai sumindo:

//alpha vai se aproximando à 0 em 10%
image_alpha = lerp(image_alpha, 0, 0.1);

//expansão
image_xscale += 0.01;
image_yscale += 0.01;

//Se o alpha for menor ou igual a 0, então a chave pode se destruir
if (image_alpha <= 0) { instance_destroy() }

}