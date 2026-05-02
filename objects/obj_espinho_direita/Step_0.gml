if (voar == true)
{
	x += vel;
	destruir = true;
}

if (destruir == false) { exit }

if (place_meeting(x, y, destruidores)) { instance_destroy() }