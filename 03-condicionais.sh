##########################################
# Script: 03-condicionais.sh
# Autor: Lucas Basilio
# Data: 2025-08-16
# Descrição: Exemplo de condicionais em Bash
# Uso: ./03-condicionais.sh
##########################################


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
##################################################################################

## Exercicio 2: Criar uma verificação com if, elif e else.
## REGRAS:
# Informar se o usuário poderá assistir a um filme com censura para maiores e com o ingresso que custa 50R$


## Começo do script

#!/bin/bash

# Pedidos de nome, idade e quantidade de dinheiro.
read -p "Olá, digite seu nome para continuar: " NOME
read -p "Olá $NOME, agora preciso saber sua idade: " IDADE
echo "O ingresso tem um determinado valor, preciso saber se a quantidade que você tem é correta"
read -p "Quanto tem de dinheiro? " DINHEIRO

# Verificação de idade
if [ "$IDADE" -lt "18" ]
then
     echo "Você não pode assistir o filme"
     echo "Idade não permitida. So maiores de 18 anos"
# Verificação de valor
elif [ "$DINHEIRO" -lt "50" ]
then
     echo "Você não tem dinheiro suficiente."
     echo "Valor Necessario é 50R\$"
# Caso o usuário passar em todas as verificações, retorna a mensagem de sucesso.
else
     echo "Você pode assistir o filme"
fi
######################################################################################################


