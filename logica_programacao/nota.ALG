Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/06/2022
Var
   // Seção de Declarações das variáveis
   nota:real


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Escreva sua nota :D")
   leia(nota)

   se (nota <= 5.0) entao
      escreval("Conceito: D")
   senao
      se (nota > 5.0) e (nota <= 7.0) entao
         escreval("Conceito: C")
      senao
         se (nota > 7.0) e (nota <= 9.0) entao
            escreval("Conceito: B")
         senao
            se (nota > 9.0) e (nota <= 10.0) entao
               escreval("Conceito: A")
            fimse
         fimse
      fimse
   fimse


Fimalgoritmo