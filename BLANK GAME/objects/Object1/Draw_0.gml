// Barra
var pos_x = 50;
var pos_y = 50;
var largura = 200;
var altura = 20;

var proporcao = agua_bebida / agua_total;

draw_set_color(c_gray);
draw_rectangle(pos_x, pos_y, pos_x + largura, pos_y + altura, false);

draw_set_color(c_blue);
draw_rectangle(pos_x, pos_y, pos_x + (largura * proporcao), pos_y + altura, false);

draw_set_color(c_white);
draw_text(pos_x, pos_y + 30, string(agua_bebida) + " ml / " + string(agua_total) + " ml");

// Botão redondo alinhado com a barra
var raio = 30;
var btn_x = pos_x + largura + raio + 20; // joga pra direita da barra
var btn_y = pos_y + (altura / 2);        // centraliza verticalmente com a barra

var dist = point_distance(mouse_x, mouse_y, btn_x, btn_y);

if (dist < raio) {
    draw_set_color(c_blue); // azul escuro quando mouse passa por cima
} else {
    draw_set_color(make_color_rgb(100, 180, 255)); // azul claro padrão
}

draw_circle(btn_x, btn_y, raio, false);

draw_set_color(c_white);
draw_text(btn_x - 20, btn_y - 8, "Beber");