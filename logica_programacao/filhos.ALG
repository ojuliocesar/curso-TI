Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/06/2022
Var
// Seção de Declarações das variáveis 
salario:inteiro
filhos:inteiro
soma, somaFilho:inteiro
media, maior, mediaFilho:real

porc, quantidade, quantidadePorc:inteiro
resultPorc:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

escreval("Qual o seu salário?")
leia(salario)

escreval("Quantos filhos você tem?")
leia(filhos)

quantidade <- quantidade + 1

enquanto salario > 0 faça

escreval("Qual o seu salário?")
leia(salario)

escreval("Quantos filhos você tem?")
leia(filhos)

soma <- soma + salario

somaFilho <- somaFilho + filhos

se (maior < salario) entao

maior <- salario

fimse

se (filhos = 0) entao
   quantidade <- quantidade - 1
fimse

se (salario < 150) entao

porc <- porc + 1
quantidadePorc <- quantidadePorc + 1

fimse

quantidade <- quantidade + 1

fimenquanto

quantidade <- quantidade - 1

media <- soma / quantidade
mediaFilho <- somaFilho / quantidade

resultPorc <- porc / quantidadePorc
resultPorc <- resultPorc * 100

escreval("A média do salário da população é ",media,"R$")

escreval("A média de filhos da população é ",mediafilho)

escreval("O maior salário da população é ",maior,"R$")

escreval(resultPorc,"% da populção tem o salário menor que 150R$")

Fimalgoritmo