Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/06/2022
Var
// Seção de Declarações das variáveis 
idade: vetor [1..5] de inteiro
sexo: vetor [1..5] de caractere
i,soma,somah,homens,mulheres,mulheresidade:inteiro
media,mediah:real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

Para i de 1 ate 5 faca

escreval("Digite a idade")
leia(idade[i])

escreval("Digite o sexo")
leia(sexo[i])

soma <- soma + idade[i]

se (sexo[i] = "m") entao

homens <- homens + 1

senao se (sexo = "f") entao
mulheres <- mulheres + 1

fimse

se (sexo[i] = "m") entao
   somah <- somah + idade[i]
fimse

se (sexo[i] = "f") entao
   se (idade[i] > 20) entao
      mulheresidade <- mulheresidade + 1
   fimse
fimse

fimpara

media <- soma / i
mediah <- somah / homens

escreval(homens," homens foram cadastrados")

escreval(mulheres," mulheres foram cadastradas")

escreval("A média de idades é",media)

escreval("A média de idades dos homens é",mediah)

escreval(mulheresidade," mulheres são maiores que 20 anos")


Fimalgoritmo