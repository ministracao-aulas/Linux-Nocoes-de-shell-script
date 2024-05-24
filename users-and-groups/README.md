

```sh
ls -lah users-and-groups/
```

* Ao executar o comando acima, o resultado foi o abaixo:

```
total 0
drwxr-xr-x 2 gitpod gitpod 27 May 24 19:14 .
drwxr-xr-x 5 gitpod gitpod 98 May 24 19:11 ..
-rw-r--r-- 1 gitpod gitpod  0 May 24 19:13 user-file.txt
```

Na linha onde está `-rw-r--r-- 1 gitpod gitpod  0 May 24 19:13 user-file.txt`, perceba as colunas 1, 3 e 4

```sh
# 1:
-rw-r--r--

# 3:
gitpod

# 4:
gitpod
```

#### Explicando coluna #1
Na coluna **#1**, `-rw-r--r--`, traz as informações de tipo (`-`) e permissões (`rw-r--r--`).

Para o `tipo`, a informação está no primeiro caractere. Nesse caso temos um hífen (`-`). Isso significa que estamos falando de um arquivo.

As alternativas são várias, entre elas:

* `-` (hífen)    -> Arquivo
* `d` (letra D)  -> Pasta
* `l` (letra L)  -> Link simbólico
* `t` (letra T)  -> Item temporário

e outros

Para as permissões, os itens são separados em conjunto de 3 em 3, ou seja:

```sh
# rw-r--r-- ficaria:
rw- # Permissão para o usuário dono do arquivo/pasta/item, no caso 'gitpod'
r-- # Grupo do arquivo/pasta/item, no caso 'gitpod'
r-- # Outros usuários em geral
```

As opções são entre `r` (read/ler), `w` (write/escrever) e `x` (eXecute/executar).

As permissões tem valores que vão de 0 a 3 e que somados podem ser de 0 a 7.

Para saber quais permissões tem, basta olhar a tabela abaixo:


| permissão   |  valor |
|-----------  |--------|
| SEM VALOR   | 0      |
| READ (R)    | 4      |
| WRITE (W)   | 2      |
| EXCUTE (X)  | 1      |
