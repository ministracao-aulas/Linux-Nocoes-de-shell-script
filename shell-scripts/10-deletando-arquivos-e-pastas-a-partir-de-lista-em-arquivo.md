# Deletando arquivos e pastas a partir de lista em arquivo

#### Conteúdo exemplo do arquivo `lista-de-itens-para-apagar.txt`
```
arquivo1.txt
arquivo2.txt
pasta1
/caminho/completo/do/arquivo.txt
```

#### Excluindo a partir de uma lista
```sh
for item in $(cat lista-de-itens-para-apagar.txt); do [[ -f $item || -d $item ]] && echo 'ok' && rm -r $item; done
```
> Isso lerá as linhas que estão no arquivo `lista-de-itens-para-apagar.txt`
> Para cada linha, buscará o item a ser deletado
