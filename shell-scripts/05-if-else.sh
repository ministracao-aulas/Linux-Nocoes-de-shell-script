#!/bin/bash

# gt => greater than (maior que)
# ge => greater or equal (maior ou igual)
# lt => less than (menor que)
# le => less or equal (menor ou igual)
# eq => equal (igual)
# ne => not equal (diferente/não igual)

IDADE=19

if [ $IDADE -ge 18 ]; then
    echo "Pode passar. É de maior"
else
    echo "NÃO pode passar. É de menor"
fi

# if [ $IDADE -lt 18 ]; then
#     echo "NÃO pode passar. É de menor"
# else
#     echo "Pode passar. É de maior"
# fi

# if [ $IDADE -gt 17 ]; then
#     echo "Pode passar. É de maior"
# else
#     echo "NÃO pode passar. É de menor"
# fi
