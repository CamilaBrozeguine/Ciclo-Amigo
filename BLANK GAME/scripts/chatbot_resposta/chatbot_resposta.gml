function chatbot_resposta(fase) {

    if (fase == "menstrual") {
        return "Hoje você pode estar mais cansada. Descanse ";
    }
    if (fase == "folicular") {
        return "Você está com mais energia! Aproveite pra fazer atividades e organizar sua rotina 😴🥰 ";
    }
    if (fase == "ovulação") {
        return "Você pode se sentir mais confiante hoje ✨, que tal aproveitar pra socializar ";
    }
    if (fase == "lútea") {
        return "Hoje pode bater sensibilidade. Vá com calma ❤️ ";
    }

    return "Cuide bem de você 💛";
}