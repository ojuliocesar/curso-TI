Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/06/2022
Var
   // Seção de Declarações das variáveis
   nome: vetor [1..3] de caractere
   idade: vetor [1..3] de inteiro
   sexo: vetor [1..3] de caractere
   motivo: vetor [1..3] de inteiro

   i, quantidadeVinte, cursoTi, cursoEn, cursoAd,totalIdade,totalF:inteiro
   cursoF,menorI:inteiro
   cursoMaior,menorN,menorC:caractere
   mediaIdade:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   menorI <- 20

   para i de 1 ate 3 faça
      escreval("Digite seu nome")
      leia(nome[i])

      escreval("Digite sua idade")
      leia(idade[i])

      escreval("Digite seu sexo")
      leia(sexo[i])

      escreval("Por que vocês quis fazer o curso?")
      escreval("1 - Aptidão")
      escreval("2 - Remuneração")
      escreval("3 - Obrigação")
      leia(motivo[i])

      se (idade[i] < 20) e (motivo[i] = 1) entao

         quantidadeVinte <- quantidadeVinte + 1

      fimse

      se (sexo[i] = "f") entao

         se (cursoTi > cursoF) entao
            cursoF <- cursoTi
         fimse

         se (cursoEn > cursoF) entao
            cursoF <- cursoEn

            se (cursoAd > cursoF) entao
               cursoF <- cursoAd
            fimse
         fimse

      fimse

      se (cursoF = cursoTi) entao
         cursoMaior <- "Técnico em Informática"
      senao
         se (cursoF = cursoEn) entao
            cursoMaior <- "Enfermagem"
         senao
            se (cursoF = cursoAd) entao
               cursoMaior <- "Administração"
            fimse
         fimse
      fimse

      se (menorI > idade[i]) entao

         menorI <- idade[i]
         menorN <- nome[i]

      fimse

   fimpara
   escreval(quantidadeVinte," alunos menores que 20 escolheram o curso por aptidão")

   mediaIdade <- totalIdade / cursoAd

   escreval("A média das idades dos alunos do curso de Administração é ",mediaIdade)

   escreval(cursoMaior," é o curso mais frequentado pelas mulheres")

   escreval("O aluno ",menorN,", cursando ",menorC,", é o mais novo da turma")
   escreval("Ele tem ",menorI, " anos de idade")
Fimalgoritmo