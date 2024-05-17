### UI

Dá para criar uma caixa gráfica para seleção de opções.

Para isso, existem diversas bibliotecas. As mais simples e fáceis são `zenity` e `yad`;

### Instalando dependências
* Para instalar o `zenity` no Ubuntu, basta executar esse comando:
```sh
sudo apt-get install zenity
```

* Para instalar o `yad` no Ubuntu, basta executar esse comando:
```sh
sudo apt-get install yad
```

### Exemplos

#### Criando lista se opções com o `zenity`:

```sh
OPCAO=$(zenity --list --title="Selecione uma opção" --column="Opções" "Opção 1" "Opção 2" "Opção 3");

echo "Opção selecionada: ${OPCAO}"
```

#### Criando lista se opções com o `yad`:

```sh
OPCAO=$(yad --form --title="Selecione uma opção" --field="Opções:CB" "Opção 12\!Opção 3");

echo "Opção selecionada: ${OPCAO}"
```
