#!/bin/bash

# Sucesso
find /tmp -type f > /tmp/arquivos_pasta_tmp.txt  2>&1

if [ $? -ne 0 ]; then
    echo "Erro!";
    # exit 5; ## Saída opcional em caso de erros
fi

# Erro
find /tmp/pastas-fake2 -type f > /tmp/arquivos_pasta_fake2.txt  2>&1

if [ $? -ne 0 ]; then
    echo "Erro!";
    # exit 5; ## Saída opcional em caso de erros
fi
