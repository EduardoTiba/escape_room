draw_self();

#region Aviso do spawn do inimigo

if (global.inimigo_spawn == false) { exit }
//Ideia: ponto de exclamação piscando em cima do player

//definindo a cor
var _cor = make_colour_rgb(100, 20, 80);

//alinhando no centro do player
draw_set_halign(1);
draw_set_valign(1);

//alpha do texto
if (alpha_texto >= 1)
{
	alpha_texto -= 0.05;
}
else
if (alpha_texto <= 0)
{
	alpha_texto -= 0.05;
}
image_alpha += alpha_texto;

//escrevendo o texto
draw_text_colour(x, y-20, "!", _cor, _cor, _cor, _cor, alpha_texto);

//resetando os draw_set
draw_set_halign(-1);
draw_set_valign(-1);

#endregion