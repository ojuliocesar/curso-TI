Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/06/2022
Var
   // Seção de Declarações das variáveis
nome: vetor [1..5] de caractere
idade: vetor [1..5] de inteiro
sexo: vetor [1..5] de caractere
curso: vetor [1..5] de inteiro
motivo: vetor [1..5] de inteiro

i, quantidadeVinte:inteiro

cursoTi, cursoEn, cursoAd:caractere
cursoTiQuantidade, cursoEnQuantidade, cursoAdQuantidade:inteiro
somaIdade:inteiro
mediaIdade:real

porTi, porEn, porAd:inteiro

cursoTiF, cursoEnF, cursoAdF, cursoF:inteiro
cursoMaior:caractere

pessoaMenor:inteiro

idadeMenor:inteiro
nomeMenor, cursoMenor:caractere

quantidadeTotal:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   
idadeMenor <- 50

para i de 1 ate 5 faça
   escreval("Digite seu nome")
   leia(nome[i])

   escreval("Digite sua idade")
   leia(idade[i])

   escreval("Digite seu sexo")
   leia(sexo[i])

   escreval("Qual curso você está fazendo?")
   escreval("1) Técnico em Informática")
   escreval("2) Enfermagem")
   escreval("3) Administração")
   leia(curso[i])

   escreval("Por que vocês quis fazer o curso?")
   escreval("1 - Aptidão")
   escreval("2 - Remuneração")
   escreval("3 - Obrigação")
   leia(motivo[i])

   se (idade[i] < 20) e (motivo[i] = 1) entao

      quantidadeVinte <- quantidadeVinte + 1

   fimse

   se (curso[i] = 1) entao
    cursoTi <- "Técnico em Informática"
    cursoTiQuantidade <- cursoTiQuantidade + 1
    senao
         se (curso[i] = 2) entao
         cursoEn <- "Enfermagem"
         cursoEnQuantidade <- cursoEnQuantidade + 1
         senao
              se (curso[i] = 3) entao
              cursoAd <- "Administração"
              cursoAdQuantidade <- cursoAdQuantidade + 1
              fimse
         fimse
   fimse

   se (curso[i] = 3) entao

   somaIdade <- somaIdade + idade[i]

   fimse

   se (sexo[i] = "f") entao
      se (curso[i] = 1) entao
      cursoTiF <- cursoTiF + 1
      senao
        se (curso[i] = 2) entao
        cursoEnF <- cursoEnF + 1
        senao
             se (curso[i] = 3) entao
             cursoAdF <- cursoAdF + 1
             fimse
        fimse
      fimse
   fimse

   se (cursoF < cursoTiF) entao

   cursoF <- cursoTiF
   cursoMaior <- "Técnico em Informática"

   fimse

   se (cursoF < cursoEnF) entao

   cursoF <- cursoEnf
   cursoMaior <- "Enfermagem"

   fimse

   se (cursoF < cursoAdF) entao

   cursoF <- cursoAdF
   cursoMaior <- "Administração"

   fimse

   se (idadeMenor > idade[i]) entao

   idadeMenor <- idade[i]
   nomeMenor <- nome[i]

      se (curso[i] = 1) entao
      cursoMenor <- "Técnico em Informática"
      senao
           se (curso[i] = 2) entao
           cursoMenor <- "Enfermagem"
           senao
                se (curso[i] = 3) entao
                cursoMenor <- "Administração"
                fimse
           fimse
      fimse
   fimse

   quantidadeTotal <- quantidadeTotal + 1

fimpara

escreval("")
escreval(quantidadeVinte," alunos menores que 20 escolheram o curso por aptidão")
escreval("")

porTi <- (cursoTiQuantidade * 10) * 2
porEn <- (cursoEnQuantidade * 10) * 2
porAd <- (cursoAdQuantidade * 10) * 2

escreval(porTi,"% dos alunos participam do curso de TI")
escreval(porEn,"% dos alunos participam do curso de Enfermagem")
escreval(porAd,"% dos alunos participam do curso de Administração")
escreval("")

mediaIdade <- somaIdade / cursoAdQuantidade

escreval("A média das idades dos alunos do curso de Administração é ",mediaIdade)
escreval("")

escreval(cursoMaior," é o curso mais frequentado pelas mulheres")
escreval(cursoF," mulheres participam dele")
escreval("")

escreval("O aluno(a) ",nomeMenor,", cursando ",cursoMenor,", é o(a) mais novo(a) da turma")
escreval("Ele(a) tem ",idadeMenor, " anos de idade")
Fimalgoritmo