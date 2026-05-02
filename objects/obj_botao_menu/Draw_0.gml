///@description "Escolher level"
draw_self();

//alinhando o texto no meio do botão
draw_set_halign(1);
draw_set_valign(1);

//definindo a fonte do texto
draw_set_font(fnt_menu_botao);

//escrevendo o texto
draw_text(x, y, texto);

//resentando os draw_set
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);