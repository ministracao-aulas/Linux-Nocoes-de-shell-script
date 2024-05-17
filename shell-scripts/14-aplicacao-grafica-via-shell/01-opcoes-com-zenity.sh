#!/bin/bash

OPCAO=$(zenity --list --title="Selecione uma opção" --column="Opções" "Opção 1" "Opção 2" "Opção 3");

echo "Opção selecionada: ${OPCAO}"
