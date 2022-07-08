Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/06/2022
Var
// Seção de Declarações das variáveis 
cigarros, min:inteiro
anos:inteiro
dias:real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Digite o número de cigarros fumados por dia")
leia(cigarros)

escreval("À quantos anos você fuma?")
leia(anos)

anos <- anos * 365

min <- (cigarros * 10) * anos

dias <- min / 1440

escreval("A quantidade de dias que você perdeu é ",dias)
Fimalgoritmo