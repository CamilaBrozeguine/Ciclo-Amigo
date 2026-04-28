var btn_x = 50 + 200 + 20; // mesma posição usada no Draw
var btn_y = 50;
var btn_w = 80;
var btn_h = 30;

// Se o mouse foi clicado dentro da área do botão
if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x > btn_x && mouse_x < btn_x + btn_w &&
        mouse_y > btn_y && mouse_y < btn_y + btn_h) {

        agua_bebida += 250;
        if (agua_bebida > agua_total) {
            agua_bebida = agua_total;
        }
    }
}