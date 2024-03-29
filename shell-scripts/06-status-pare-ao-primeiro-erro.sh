#!/bin/bash
set -e

ls -l /tmp  > /dev/null 2>&1;
echo -e "\nSucesso até aqui 1";

ls -l /home  > /dev/null 2>&1;
echo -e "\nSucesso até aqui 2";

ls -l /tmp/pastas-fake  > /dev/null 2>&1
echo -e "\nSucesso até aqui 3"

ls -l /tmp/pastas-fake/arquivo1.txt  > /dev/null 2>&1
echo -e "\nSucesso até aqui 4\n";

ls -l /tmp/pastas-fake/arquivo2.txt  > /dev/null 2>&1
echo -e "\nSucesso até aqui 5\n";

echo "Todos os comandos foram executados com sucesso!!!!"
