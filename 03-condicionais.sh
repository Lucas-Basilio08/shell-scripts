## Essa pasta está destinadas a condicionais
## Nessa pasta terá exercicios de if, elif e else
## Cada exercicio terá o que cada coisa faz e o codigo base somente.

## Exercicio 1: Criar um sistema de instalação que pede o nome do usuário e a confirmação de sim e não.
## Mas tem que ter a mensagem escrita com if e ter a mensagem de erro caso a variavél nome estiver vazia.

## Exercicio 1 é meramente ilustrativo.

## Começo do Script

#!/bin/bash

## Solicitação do nome de usuario
read -p "Para começar digite seu nome: " NOME

# Mensagem de erro(caso variavél estiver vazia)
echo "${NOME:?Nome de usuário não fornecido\!}"

# Mensagem se a variavél obtiver um valor
echo "Olá $NOME, isso é uma instalação de um programa"

# Confirmação de escolha
read -p "Deseja continuar?(y/n)" RESPOSTA

# Mensagens de resposta y ou n
MENSAGEM="Instalação em andamento..."
MENSAGEM2="Instalação Cancelada!"

# Utilização do comando if
{
if [ "$RESPOSTA" = "y" ]
then
echo "$MENSAGEM"
fi
}

{
if [ "$RESPOSTA" = "n" ]
then
echo "$MENSAGEM2"
fi
}

