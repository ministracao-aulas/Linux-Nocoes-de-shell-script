#!/bin/bash

```sh
sed -i 's/antigovalor/novovalor/g' meu-arquivo.txt
```

Se colocar o `i` junto com o `g`, faz ignorar case (não compara maiúsculas e minúsculas):
```sh
sed -i 's/antigovalor/novovalor/ig' meu-arquivo.txt
```


Replace em variáveis:

```sh
original_string="Hello, World!"
new_string=${original_string//World/Universe}
echo "$new_string" # Output: Hello, Universe!
```
