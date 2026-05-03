//escrevendo o texto dos botões:
draw_self();

//só pode escrever se o alfa for 1
if (image_alpha <= 0.9) { exit }

//definindo uma fonte
draw_set_font(fnt_menu_botao);
//alinhando no meio do botão
draw_set_halign(1);
draw_set_valign(1);

//escrevendo o texto
draw_text(x, y, texto);