## Ola, aqui é uma área destinada a comandos basicos do shell.
## Coisas básicas como criar um arquivo .sh requisitando o nome do usuario pelo terminal
## Só irei colocar os comandos bases e o que eles fazem.




## Comando 1: Requisitar nome de usuario.

#!/bin/bash

echo "Bem vindo ao novo programa!"
read -p "Digite seu nome: " $NOME
echo "$NOME, Obrigado, agora podemos continuar"
## ESSE COMANDO REQUISITA O NOME DO USUARIO (COMANDO BÁSICO) 
