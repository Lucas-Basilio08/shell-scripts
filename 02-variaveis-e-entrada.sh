#!/bin/bash

# Olá, esse tópico será mais para exercicios de shell mais complexos.
# Nesse tópico irei falar o que deve ser feito e mostrar o comando(s) que vou utilizar.



## Exercicio 1: calcular a idade do usuario a partir do ano que ele nasceu e imprimir na tela.

# Pedir informações
read -p "Digite seu nome: " NOME
read -p "Digite o ano em que nasceu: " ANO_NASC

# Calcular idade 
ANO_ATUAL=$(date +%Y)
IDADE=$(echo "$ANO_ATUAL-$ANO_NASC" | bc -l)

# Imprimir na tela
echo "Olá, $NOME"
echo "Esse ano você tem/terá $IDADE anos"



