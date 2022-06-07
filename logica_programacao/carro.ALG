Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/05/2022
Var
velocidade,multa,valor:inteiro

Inicio
escreval("Qual a velocidade?")
leia(velocidade)

se (velocidade > 80) entao

escreval("Você foi multado")

multa <- velocidade - 80
valor <- multa * 5

escreval("você irá pagar ",valor)

seNao

escreval("Você está dentro dos limites!")

fimse


Fimalgoritmo