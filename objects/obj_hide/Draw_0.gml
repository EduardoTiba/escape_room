draw_self();
if (global.inimigo_spawn == false) { exit }

//apenas mostrar essa mensagem na primeira room :)))))))))

if (room == rm_partida01)
{
	draw_set_halign(1);
	draw_set_valign(1);
	
	draw_text(x, y-20, "hide here!!"); 
	
	draw_set_halign(-1);
	draw_set_valign(-1);	
}