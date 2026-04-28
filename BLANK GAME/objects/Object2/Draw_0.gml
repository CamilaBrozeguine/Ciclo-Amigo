UTF-8
// 1. PRIMEIRO DE TUDO: Calcular o centro (Isso DEVE ficar no topo!)
var cx = room_width / 2;
var cy = room_height / 2;

// ================= FUNDO =================
draw_set_color(make_color_rgb(242, 200, 162)); // rosa claro
draw_rectangle(0, 0, room_width, room_height, false);

// ================= CAIXA BRANCA CENTRAL =================
draw_set_color(c_white);
draw_roundrect_ext(cx - 300, cy - 250, cx + 300, cy + 250,40, 40, false);

draw_set_color(make_color_rgb(255, 182, 193));
draw_rectangle(cx - 300, cy - 250, cx + 300, cy + 250, true);

// ================= CONFIG TEXTO =================
draw_set_halign(fa_center);
draw_set_color(c_black);

// ================= TELA DE INPUT =================
if (estado == "input") {
	 draw_set_color(make_color_rgb(191, 120, 94));
	draw_text(cx, cy - 230, "VAMOS COMECAR!" );
	
	draw_sprite(ovinho, 0, cx, cy - 155);

    draw_set_color(c_black);
    draw_text(cx, cy - 80, "Olá! Quando foi sua última menstruação?");
	draw_text(cx, cy - 60, "digite a data");

    // CAIXA DE INPUT BEGE
    draw_set_color(make_color_rgb(242, 200, 162));
    draw_roundrect_ext(cx - 140, cy - 25, cx + 140, cy + 25, 40, 40, false);

    // LÓGICA DA DATA FORMATADA
    var d = string_copy(input_texto, 1, 2);
    var m = string_copy(input_texto, 3, 2);
    var a = string_copy(input_texto, 5, 2);

    while (string_length(d) < 2) d += "-";
    while (string_length(m) < 2) m += "-";
    while (string_length(a) < 4) a += "-";

    // CURSOR PISCANDO
    if (current_time div 500 mod 2 == 0) {
        var tam = string_length(input_texto);
        if (tam < 2) d = string_delete(d, tam + 1, 1) + "|";
        else if (tam < 4) m = string_delete(m, (tam - 2) + 1, 1) + "|";
        else if (tam < 6) a = string_delete(a, (tam - 4) + 1, 1) + "|";
    }

    // String formatada
    var data_formatada = d + "   /   " + m + "   /   " + a;

    // Desenha o texto da data
    draw_set_color(c_black);
    draw_text(cx, cy - 10, data_formatada);

    // ERRO
    draw_set_color(c_red);
    draw_text(cx, cy + 50, erro);

    // DICA
    draw_set_color(c_black);
    draw_text(cx, cy + 100, "Pressione ENTER");
	
	// BOTÃO CONTINUAR
    var bx = cx - 80;
    var by = cy + 80;
    var bw = 160;
    var bh = 40;

    var mx = mouse_x;
    var my = mouse_y;

    if (mx > bx && mx < bx + bw && my > by && my < by + bh) {
        draw_set_color(make_color_rgb(140, 70, 55)); 
    } else {
        draw_set_color(make_color_rgb(191, 120, 94));
    }

    draw_roundrect_ext(bx, by, bx + bw, by + bh, 20, 20, false);

    draw_set_color(c_white);
    draw_text(cx, by + 12, "Continuar");
}

// ================= TELA RODANDO =================
if (estado == "rodando") {
    draw_set_color(make_color_rgb(140, 70, 55));
    draw_text(cx, cy - 130, "Seu ciclo hoje:");

    draw_set_color (c_black);
    var fase_texto = string_upper(fase);
    var largura = string_width(fase_texto);
    var altura  = string_height(fase_texto);
    var margem = 10;

    var x1 = cx - largura/2 - margem;
    var y1 = (cy - 90) - margem;
    var x2 = cx + largura/2 + margem;
    var y2 = (cy - 90) + altura + margem;

    draw_set_color(make_color_rgb(242, 200, 162));
    draw_rectangle(x1, y1, x2, y2, false);

    draw_set_color(c_black);
    draw_text(cx, cy - 90, fase_texto);

    draw_set_color(make_color_rgb(140, 70, 55));
    draw_text(cx, cy - 50, "Dia do ciclo: " + string(dia_ciclo));

    var bx1 = cx - 160;
    var by1 = cy - 20;
    var bx2 = cx + 160;
    var by2 = cy + 80;

    draw_set_color(make_color_rgb(242, 200, 162));
    draw_roundrect_ext(bx1, by1, bx2, by2, 20, 20, false);

    draw_set_color(c_black);
    draw_set_halign(fa_left);
    draw_text_ext(bx1 + 10, by1 + 10, mensagem, -1, 300); 

    draw_set_halign(fa_center);
}