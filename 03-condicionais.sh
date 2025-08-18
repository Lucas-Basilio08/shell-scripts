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


## Exercicio 3: Criar calculadora de faixa etária.

## REGRAS:
#Escreva um programa em shell script que pede e recebe a idade do usuário a partir da linha de comandos, e calcula a faixa etária do usuário. Utilize blocos IF.

#As faixas etárias são:

#De 0 a 2 anos - Bebê 
#De 2 a 14 anos - Criança 
#De 14 a 18 anos - Adolescente 
#De 18 a 65 anos - Adulto 
#Acima de 65 anos - Idoso

## Começo do script
#!/bin/bash

# Falar com usuario e pedir idade
echo "Olá, para começar irei precisar de alguns dados"
read -p "Digite sua idade: " IDADE

# Calcula faixa etária do bebê
if [ "$IDADE" -le "2" ]
then
     echo "Pela sua idade, sua faixa etaria é de um bebê"

# Calcula faixa etária da criança
elif [ "$IDADE" -le "14" ]
then
     echo "Usuário é Criança"

# Calcula faixa etária do adolescente
elif [ "$IDADE" -le "18" ]
then
     echo "Usuário é Adolescente"

# Calcula faixa etária do adulto
elif [ "$IDADE" -le "65" ]
then
     echo "Usuário é Adulto(a)"

# Calcula faixa etária do idoso(a)
elif [ "$IDADE" -le "110" ]  
then
     echo "Usuário é idoso(a)"

# Caso nenhuma bloco seja cumprido, entra como idade invalida
else
     echo "Idade invalida"
fi
#########################################################################################################

## Exercicio 4: Criar Uma Calculadora de baseada nas notas enviadas pelo usuário no terminal.

#Escreva um programa em shell script que pede e recebe a nota do usuário a partir da linha de comandos, e calcula o conceito. Utilize blocos IF.

# Os conceitos são:

# De 0 a 5 potos - Insuficiente 
# De 5 a 7 pontos - Regular 
# De 7 a 9 pontos - Bom 
# Acima de 9 pontos - Excelente


## Começo do script
#!/bin/bash


# Pede informções
read -p "Olá, me informe seu nome: " NOME
read -p "Olá, $NOME. Agora me informe sua nota: " NOTA

# Analisa de 0-5
if [ "$NOTA" -le "5" ]
then
    echo "Nota Insuficiente"

# Analisa de 7-9
elif [ "$NOTA" -le "7" ]
then
    echo "Nota Regular"

# Analisa de 9-7
elif [ "$NOTA" -le "9" ]
then 
    echo "Nota Boa"

# Analisa de 10-9
elif [ "$NOTA" -le "10" ]
then
    echo "Nota Excelente"

# Comunica mensagem de erro (e explica como são as notas)
else
    echo "Notas de 0-10"
fi 
