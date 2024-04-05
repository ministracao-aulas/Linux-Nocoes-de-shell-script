# Renomeando arquivos em lote

#### Criando arquivos de exemplo

```sh
touch arquivo_teste_{1..50}.txt
```
> Isso criará 50 arquivos de texto vazios com nomes que vão de `arquivo_teste_1.txt` à `arquivo_teste_50.txt`

-----

#### Renomeando arquivos
```sh
for file in $(find . -type f -name "*teste*.txt*"); do mv $file ${file/teste/exemplo}; done
```
> Isso renomeará os arquivos de `arquivo_teste_...` para `arquivo_exemplo...`
