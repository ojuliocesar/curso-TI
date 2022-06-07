Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/06/2022
Var
   // Seção de Declarações das variáveis
   cargo:inteiro
   salario, novo:real



Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Digite seu Cargo")
   leia(cargo)

   escreval("Digite seu salário")
   leia(salario)

   se (cargo = 101) entao
      novo <- salario * (10 / 100) + salario
   senao
      se (cargo = 102) entao
         novo <- salario * (20 / 100) + salario
      senao
         se (cargo = 103) entao
            novo <- salario * (30 / 100) + salario
         senao entao
            novo <- salario * (40 / 100) + salario
         fimse
      fimse
   fimse

   escreval("Seu salário antigo era",salario,". Seu novo salário é",novo,". A diferença entre eles é: ",novo - salario)


Fimalgoritmo