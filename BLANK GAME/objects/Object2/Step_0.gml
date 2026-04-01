// Esse código deve rodar no evento STEP do seu objeto

// ================= TELA DE INPUT =================
if (estado == "input") {

    var cx = room_width / 2;
    var cy = room_height / 2;

    // --- 1. DIGITAÇÃO ---
    // Limita o que o usuário pode digitar para no máximo 6 caracteres
    if (string_length(keyboard_string) > 6) {
        keyboard_string = string_copy(keyboard_string, 1, 6);
    }
    input_texto = keyboard_string;

    // BACKSPACE (Apagar)
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(input_texto) > 0) {
            keyboard_string = string_delete(input_texto, string_length(input_texto), 1);
        }
    }

    // --- 2. VERIFICAÇÃO DE CLIQUE OU ENTER ---
    var bx = cx - 80;
    var by = cy + 140;
    var bw = 160;
    var bh = 40;

    var mx = mouse_x;
    var my = mouse_y;
    
    var clicou_continuar = false;
    if (mouse_check_button_pressed(mb_left)) {
        if (mx > bx && mx < bx + bw && my > by && my < by + bh) {
            clicou_continuar = true;
        }
    }

    
    if (keyboard_check_pressed(vk_enter) || clicou_continuar) {
        
        // dta com length 6
        if (string_length(input_texto) == 6) {
            
            // Pega os valores finais fatiando o texto
            var dia_inicio = real(string_copy(input_texto, 1, 2));
            var mes_inicio = real(string_copy(input_texto, 3, 2));
            var ano_digitado = real(string_copy(input_texto, 5, 2));
            
            // Somamos 2000 para o GameMaker entender que 26 é 2026
            var ano_inicio = 2000 + ano_digitado; 
            
            // Criamos as datas para o cálculo
            var hoje = date_current_datetime(); 
            var data_inicio = date_create_datetime(ano_inicio, mes_inicio, dia_inicio, 0, 0, 0);

            // Calcula a diferença de dias reais
            var dias_passados = date_day_span(data_inicio, hoje);

            // Calcula o dia atual dentro do ciclo (Ex: ciclo padrão de 28 dias)
            var ciclo_padrao = 28; 
            dia_ciclo = floor(dias_passados mod ciclo_padrao) + 1;

            // --- 3. DEFINIR FASE DO CICLO ---
            if (dia_ciclo <= 5) {
                fase = "menstrual";
            }
            else if (dia_ciclo <= 13) {
                fase = "folicular";
            }
            else if (dia_ciclo == 14) {
                fase = "ovulação";
            }
            else {
                fase = "lútea";
            }

            // CHATBOT só que não a mensagem tão no script chat_bot
            if (script_exists(chatbot_resposta)) {
                mensagem = chatbot_resposta(fase);
            } else {
                mensagem = "Dados processados com sucesso!";
            }
            
            // scrip avancar_campo
            estado = "rodando"; 
            erro = "";
            
        } else {
            erro = "Por favor, digite a data completa!";
        }
    }
}

// ================= TELA RODANDO =================
if (estado == "rodando") {
    // Aqui no Step você pode colocar coisas que acontecem em tempo real na tela do Pet
    // Como animações, cliques para fazer carinho, etc.
}