Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/06/2022
Var
// Seção de Declarações das variáveis
media: vetor [1..10] de real
menor, maior, mediaTemp, somaTemp: real
i, dia:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

escreval("Qual a média do dia 1° ?")
leia(media[1])

menor <- media[1]

maior <- media[1]

somaTemp <- media[1]
   
para i de 2 ate 10 faca

   escreval("Qual a média do dia ",i,"°?")
   leia(media[i])

   se (menor > media[i]) entao

      menor <- media[i]

   fimse

   se (maior < media[i]) entao

      maior <- media[i]

   fimse

   somaTemp <- somaTemp + media[i]

fimpara

mediaTemp <- somaTemp / i

para i de 1 ate 10 faca

   se (media[i] < mediaTemp) entao

      dia <- dia + 1

   fimse

fimpara

escreval("A menor temperatura do ano é ",menor)
escreval("A maior temperatura do ano é ",maior)
escreval("A média de temperatura é ",mediaTemp)
escreval("A quantidade de dias com temperatura menor que a média é ",dia)

Fimalgoritmo