//se ele puder sair voando, então ele pode ser destruído e se move de 6 em 6 pixels
if (voar == true) 
{
	x -= vel;
	destruir = true;
}

if (destruir == false) { exit }

if (place_meeting(x, y, destruindores)) { instance_destroy() }