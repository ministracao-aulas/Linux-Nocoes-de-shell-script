#!/bin/bash

## /dev/null é um 'disco/pasta' falso. Tudo o que for enviado para ele vai para o 'limbo'

# Sucesso
find /tmp -type f > /dev/null  2>&1

if [ $? -ne 0 ]; then
    echo "Erro!";
    # exit 5; ## Saída opcional em caso de erros
fi

# Erro
find /tmp/pastas-fake2 -type f > /dev/null  2>&1

if [ $? -ne 0 ]; then
    echo "Erro!";
    # exit 5; ## Saída opcional em caso de erros
fi
