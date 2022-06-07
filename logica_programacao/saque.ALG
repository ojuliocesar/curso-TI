Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/06/2022
Var
// Seção de Declarações das variáveis 
valor, saque:real
opcao:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
valor <- 1500

escreval("1 - Efetuar saque")
escreval("0 - Sair")
leia(opcao)

se (opcao = 1) entao
escreval("Escreva o saque")
leia(saque)
   se (saque <= valor) entao
      valor <- valor - saque
      escreval("Você sacou R$",saque,". Sobraram R$",valor)

   senao
      escreval("Você não pode sacar")
      
   fimse

senao
escreval("Até logo")

fimse

Fimalgoritmo