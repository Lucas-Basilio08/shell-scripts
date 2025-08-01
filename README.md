# ⚙️ Shell Scripts

Este repositório contém meus estudos, anotações e exercícios de automação usando **Shell Script** no Linux. É uma das etapas do meu cronograma para me tornar um DevOps Júnior.

## 📌 O que são Shell Scripts?
Shell scripts são arquivos de texto contendo comandos que podem ser executados sequencialmente pelo terminal. Eles automatizam tarefas repetitivas, facilitando a administração de sistemas e servidores.

## 📚 Conteúdos abordados
- Criação de scripts `.sh`
- Execução com `bash` e permissões com `chmod +x`
- Uso de variáveis, `read` e `echo`
- Estruturas de decisão (`if`, `else`, `elif`)
- Estruturas de repetição (`for`, `while`)
- Funções
- Parâmetros (`$1`, `$2`, `"$@"`)
- Redirecionamentos (`>`, `>>`, `2>`, `|`)
- Entrada e saída de dados
- Scripts com interação de usuário

## 📂 Estrutura do repositório
shell-scripts/

├── 01-comandos-basicos.sh

├── 02-variaveis-e-entrada.sh

├── 03-condicionais.sh

├── 04-loops.sh

├── 05-funcoes.sh

├── 06-projetos/

│ ├── backup_local.sh

│ └── usuario_novo.sh

├── desafios/

│ ├── desafio01.sh

│ └── desafio02.sh

└── README.md


## 🚀 Projetos simples incluídos
- Script de backup local de diretórios
- Script para adicionar usuários com senha
- Contador automático com `while`
- Gerador de senhas simples

## 🛠️ Tecnologias usadas
- Bash (Bourne Again Shell)
- Terminal Linux via WSL2
- Editor: Visual Studio Code

## 🔍 Como executar um script
```bash
chmod +x nome_do_script.sh
./nome_do_script.sh
