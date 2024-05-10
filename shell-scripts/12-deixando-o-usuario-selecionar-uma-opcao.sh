#!/bin/bash

# Lista de opções
echo "Escolha uma opção:"
echo "1) Opção 1"
echo "2) Ver meu IP"
echo "3) Opção 3"
echo "4) Sair"
echo ""

my_ip() {
    local IP;
    IP=$(curl -s checkip.amazonaws.com);

    echo "";
    echo "Seu IP é ${IP}";
    echo "";
}

# Loop para receber a escolha do usuário
while true; do
    echo "";
    ## Aqui espera dar enter
    # read -p "Digite o número da opção: " escolha

    ## Aqui não espera dar enter (1 caractere basta)
    read -n 1 -p "Digite o número da opção desejada: " escolha
    case $escolha in
        1)
            echo ""
            echo "Você escolheu a Opção 1."
            # Coloque aqui o comando ou ação para a Opção 1
            ;;
        2)
            my_ip;
            # Coloque aqui o comando ou ação para a Opção 2
            ;;
        3)
            echo ""
            echo "Você escolheu a Opção 3."
            # Coloque aqui o comando ou ação para a Opção 3
            ;;
        4)
            echo ""
            echo "Saindo..."
            break
            ;;
        'q')
            echo ""
            echo "Saindo..."
            break
            ;;
        *)
            echo ""
            echo "Opção inválida. Tente novamente."
            ;;
    esac
done
