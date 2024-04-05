# Verificando se pastas e arquivos existem

#### Verificando se certa pasta existe

```sh
if [ -d 'pasta1' ]; then
    echo "A pasta 'pasta1' existe";
else
    echo "A pasta 'pasta1' não existe";
fi
```

*ou*

```sh
[ -d 'pasta1' ] && echo "A pasta 'pasta1' existe" || echo "A pasta 'pasta1' não existe"
```
