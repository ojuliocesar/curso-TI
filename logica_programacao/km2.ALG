Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/06/2022
Var
// Seção de Declarações das variáveis
km, valor:real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Digite quantos km tem a viagem")
leia(km)

se (km <= 200) entao

valor <- km * 0.50

senao

valor <- km * 0.45

fimse

escreval("O valor da passagem será de R$",valor)

Fimalgoritmo