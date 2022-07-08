Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/06/2022
Var
// Seção de Declarações das variáveis 
mes:inteiro
dias:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual o mês? ")
leia(mes)

escolha mes

caso 02
escreval("28 dias")

caso 04, 06, 09, 11
escreval("30 dias")

caso 01, 03, 05, 07, 08, 10, 12
escreval("31 dias")

outrocaso
escreval("Digite um mês válido!")

fimescolha


Fimalgoritmo