function avancar_campo() {

    if (input_texto == "") {
        erro = "Digite um valor!";
        return;
    }

    var valor = real(input_texto);
    erro = "";

    // DIA
    if (campo == 0) {
        if (valor >= 1 && valor <= 31) {
            dia_inicio = valor;
            campo = 1;
            input_texto = "";
        } else {
            erro = "Dia inválido (1-31)";
        }
    }

    // MÊS
    else if (campo == 1) {
        if (valor >= 1 && valor <= 12) {
            mes_inicio = valor;
            campo = 2;
            input_texto = "";
        } else {
            erro = "Mês inválido (1-12)";
        }
    }

    // ANO
    else if (campo == 2) {
        if (valor >= 1900 && valor <= 2100) {
            ano_inicio = valor;
            estado = "rodando";
            input_texto = "";
        } else {
            erro = "Ano inválido";
        }
    }
}