#!/bin/bash

VALOR=0
VALOR_MINIMO=1
VALOR_MAXIMO=4

# Função para imprimir uma mensagem de boas-vindas
print_welcome() {
    echo "Pressione as teclas de seta para cima e para baixo para navegar."
}

print_text_color_white() {
    local TEXT=$@
    # echo -e "\033[47;30m Este é um texto preto com fundo branco \033[0m"
    # Definindo variáveis para cores
    local GREEN='\033[0;32m'
    local WHITE='\033[47;30m'
    local CLEAR='\033[0m'

    local COLOR=$WHITE

    # Usando as variáveis para colorir o texto
    echo -e "${COLOR}${TEXT}${CLEAR}"
}

my_ip() {
    local IP;
    IP=$(curl -s checkip.amazonaws.com);

    echo "";
    echo "Seu IP é ${IP}";
    echo "";
}

print_option_label() {
    local LABEL=$1
    local OPTION=$2
    local OPCAO_SELECIONADA=$3

    if [ $OPTION = "$OPCAO_SELECIONADA" ]; then
        print_text_color_white $LABEL;
    else
        echo $LABEL;
    fi
}

print_opcoes() {
    local OPCAO_SELECIONADA=$1
    # Lista de opções
    echo ""
    echo "Pressione as teclas de seta para cima e para baixo para navegar."
    echo ""

    echo "Escolha uma opção:"
    print_option_label "1) Opção 1" 1 $OPCAO_SELECIONADA
    print_option_label "2) Ver meu IP" 2 $OPCAO_SELECIONADA
    print_option_label "3) Opção 3" 3 $OPCAO_SELECIONADA
    print_option_label "4) Sair" 4 $OPCAO_SELECIONADA

    # echo "Escolha uma opção:"
    # echo "1) Opção 1"
    # echo "2) Ver meu IP"
    # echo "3) Opção 3"
    # echo "4) Sair"

    echo ""
}

update_output() {
    clear;
    print_opcoes ${1:-$VALOR};
}

run_opcao_selecionada() {
    case $1 in
        1)
            update_output $VALOR;
            echo ""
            echo "Executando opção 1."
            # Coloque aqui o comando ou ação para a Opção 1
            ;;
        2)
            my_ip;
            # Coloque aqui o comando ou ação para a Opção 2
            ;;
        3)
            update_output $VALOR;
            echo ""
            echo "Executando opção 3."
            # Coloque aqui o comando ou ação para a Opção 3
            ;;
        4)
            update_output $VALOR;
            echo "Saindo..."
            exit 0;
            ;;
        *)
            update_output $VALOR;
            echo ""
            echo "Opção inválida"
            ;;
    esac
}

test_pressed_key() {
    while true; do
        # Usando read com opções -r -s -n 1 para ler apenas um caractere sem remover caracteres de escape
        read -r -s -n 1 key

        clear;
        # Verificando se a tecla pressionada foi Enter
        if [[ $key = "" ]]; then
            echo 'Você pressionou Enter!'
        else
            echo "Você pressionou '$key'"
        fi
    done
}

# Função para capturar a entrada do teclado
capture_key() {
    read -s -n1 key

    if [[ $key == $'\x1b' ]]; then
        read -s -n2 key

        if [[ $key == '[A' ]]; then
            VALOR=$((VALOR - 1));
            VALOR=$([ $VALOR -le $VALOR_MINIMO ] && echo ${VALOR_MINIMO} || echo ${VALOR});

            update_output $VALOR
        elif [[ $key == '[B' ]]; then
            VALOR=$((VALOR + 1));
            VALOR=$([ $VALOR -ge $VALOR_MAXIMO ] && echo ${VALOR_MAXIMO} || echo ${VALOR});

            update_output $VALOR
        fi
    else
        if [[ $key = "" ]]; then
            echo "Executando opcao selecionada [${VALOR}]";
            run_opcao_selecionada $VALOR
        fi
    fi
}

# Função principal para iniciar o script
main() {
    clear;
    print_opcoes $VALOR;
    print_welcome
    while true; do
        capture_key
        # Aqui você pode adicionar a lógica para responder às teclas de seta
        # Por exemplo, mover o cursor ou alterar a seleção em uma interface
    done
}

main
