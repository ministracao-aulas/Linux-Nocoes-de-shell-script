#!/bin/bash

## Para armazenar o resultado da execução de um comando, basta executar esse comando dentro de $(...)
## Exemplo:
## VARIAVEL=$(comando)

## Exemplo 1:
ARQUIVOS=$(ls -l)
echo -e $ARQUIVOS
