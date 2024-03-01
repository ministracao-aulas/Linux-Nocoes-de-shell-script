#!/bin/bash

VALOR=123

ola() {
    local NOME=$@
    # local VALOR=789 #Altera a variável apenas nesse escopo (preservando a variável global)
    # VALOR=789  #Altera a variável global
    echo "Olá ${NOME}"
    echo ""
    # echo "${VALOR}"
}

ola Tiago França Fernandes

echo "Saida: `ola Sergio Berranterio` "
echo "Saida: $(ola Jolina Angelie)"
echo "VALOR: ${VALOR}"
