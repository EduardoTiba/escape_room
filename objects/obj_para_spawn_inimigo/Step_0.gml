//objeto especial para a ultima fase, destruirá o spawner e o
//inimigo
if (place_meeting(x, y, obj_player)) 
{
	instance_destroy(obj_spawner);
	instance_destroy(obj_inimigo);
	instance_destroy(obj_para_spawn_inimigo);
}

if (place_meeting(x, y, obj_inimigo))
{
	instance_destroy(other);
}
	