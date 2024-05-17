#!/bin/bash

# OPCAO=$(yad --form --title="Selecione uma opção" --field="Opções:CB" "Opção 12\!Opção 3");
OPCAO=$(yad --form --title="Selecione uma opção" --field="Opções:CB" "Opção 1\!Opção 2\!Opção 3");

echo "Opção selecionada: ${OPCAO}"
