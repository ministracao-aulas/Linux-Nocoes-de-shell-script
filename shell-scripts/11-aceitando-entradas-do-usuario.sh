#!/bin/bash

## Esperando o usuário informar um valor dentro de X segundos

read -p 'Digite seu nome: ' NOME

echo -e "\nOlá ${NOME}!"


## Esperando o usuário informar um valor dentro de X segundos

read -t 5 -p 'Digite um valor em 5s: ' VALOR

echo -e "\nVALOR: ${VALOR}"


## Esperando o usuário pressionar uma tecla

read -n 1 -p "Pressione qualquer tecla: " TECLA
echo -e "\nVocê pressionou: ${TECLA}\n"
