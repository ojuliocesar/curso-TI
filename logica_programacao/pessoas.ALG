Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/06/2022
Var
// Seção de Declarações das variáveis 
nomes: vetor [1..5] de caractere
alturas: vetor [1..5] de real
i:inteiro
media, soma:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Para i de 1 ate 2 faça
escreval("Escreva o nome do ",i,"° aluno")
leia(nomes[i])

escreval("Escreva a altura do ",i,"° aluno")
leia(alturas[i])

soma <- soma + alturas[i]
fimpara

media <- soma / i

escreval("A média é ",media)


Fimalgoritmo