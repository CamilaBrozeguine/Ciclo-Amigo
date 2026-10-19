# Ciclo Amigo

Aplicação educativa em formato de jogo, desenvolvida como projeto de extensão, que combina acompanhamento do ciclo menstrual, recursos de autocuidado e elementos de gamificação. Uma mascote virtual e atividades interativas ajudam a tornar o registro da rotina mais acolhedor e envolvente.

> **Importante:** o Ciclo Amigo é um protótipo educativo. Não substitui avaliação, diagnóstico ou orientação de profissionais de saúde. As informações e estimativas sobre o ciclo podem não se aplicar a todas as pessoas.

## Sobre o projeto

O projeto explora como mecânicas de jogos e uma estética inspirada em pets virtuais podem incentivar o autoconhecimento e o registro de informações sobre o ciclo menstrual. A aplicação foi criada no GameMaker e reúne telas de calendário, autocuidado e atividades educativas.

## Funcionalidades

- Calendário para navegar pelos dias e acompanhar informações do ciclo.
- Registro diário de sintomas, humor, notas, consumo de água, sono e exercício.
- Configuração de informações do ciclo para apresentar estimativas.
- Mascote virtual, itens e sistema de moedas para apoiar a experiência gamificada.
- Atividades interativas, incluindo quiz sobre saúde menstrual e minijogo musical.
- Chat com respostas relacionadas às fases do ciclo, integrado à API Gemini.
- Persistência local dos registros e do progresso do jogo em arquivo INI.

As funcionalidades disponíveis podem variar conforme o estado atual do protótipo.

## Tecnologias

- **GameMaker** e **GameMaker Language (GML)**.
- Recursos de projeto do GameMaker (`.yyp`, `.yy` e `.gml`).
- Arquivo compactado ZIP com o projeto, código-fonte e recursos visuais e de áudio.
- API Gemini para o recurso de chat.

## Requisitos

- GameMaker instalado, em uma versão compatível com o formato do projeto e com a extensão incluída.
- Windows para executar a extensão nativa `.dll` incluída no projeto. Outros sistemas ou alvos de exportação podem exigir ajustes.
- Conexão com a internet para usar o chat.

## Como obter e abrir o projeto

O projeto GameMaker está distribuído dentro de `BLANK GAME.zip`.

1. Baixe ou clone este repositório.
2. Extraia `BLANK GAME.zip` usando o Explorador de Arquivos ou uma ferramenta compatível com ZIP.

   No PowerShell, por exemplo:

   ```powershell
   Expand-Archive -LiteralPath ".\BLANK GAME.zip" -DestinationPath ".\projeto"
   ```

3. Abra o GameMaker.
4. Selecione **Open** (ou **Open Project**) e abra `BLANK GAME.yyp` dentro da pasta extraída `BLANK GAME`.
5. Aguarde o carregamento dos recursos e use o comando **Run** do GameMaker para executar o projeto.

Não há etapas de instalação de dependências por `npm`, `pip` ou outro gerenciador de pacotes: o projeto e seus recursos estão no arquivo ZIP.

## Uso e dados

As telas são operadas principalmente com o mouse; o campo de chat também aceita texto digitado pelo teclado. Navegue pelo calendário para selecionar dias e registrar as informações disponíveis na interface.

Os registros do calendário e dados do jogo são gravados localmente pelo aplicativo em `agenda_ciclo.ini`. Eles não são sincronizados com uma conta ou serviço de nuvem pelo código do projeto.

Ao enviar uma mensagem pelo chat, o texto é encaminhado à API Gemini. Evite incluir informações pessoais ou dados de saúde que possam identificar você ou outra pessoa.

## Credenciais e distribuição

**Antes de compartilhar ou distribuir o projeto, revise a integração com o Gemini.** A implementação atual contém uma chave de API diretamente no código-fonte e não oferece configuração externa para essa credencial. Uma chave incluída em um aplicativo cliente pode ser extraída por outras pessoas.

Revogue ou rotacione a chave exposta no Console do Google e altere a integração para não distribuir credenciais no código ou no executável. Não publique chaves, tokens ou outros segredos no repositório.

## Estrutura do projeto

Após extrair o arquivo ZIP, os diretórios principais incluem:

```text
BLANK GAME/
├── BLANK GAME.yyp
├── objects/       # Objetos e lógica do jogo em GML
├── rooms/         # Telas e cenas
├── scripts/       # Funções reutilizáveis
├── sprites/       # Imagens e animações
├── fonts/         # Fontes do projeto
├── sounds/        # Recursos de áudio
├── options/       # Configurações dos alvos
└── datafiles/     # Arquivos incluídos, como a extensão nativa
```

## Estado do projeto

Este repositório contém um protótipo de projeto de extensão. A documentação e os recursos refletem o conteúdo disponível no momento; não há garantia de que todas as funcionalidades estejam completas ou prontas para uso em produção.

## Licença

Este projeto está disponibilizado sob a licença MIT. Consulte [`LICENSE`](./LICENSE) para ver o texto completo.
