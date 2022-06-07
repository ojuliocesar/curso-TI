Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/06/2022
Var
   // Seção de Declarações das variáveis
   idades: vetor [1..5] de inteiro
   i, soma:inteiro
   media:real

   maiores,menores,maior:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Para i de 1 ate 5 faça

      escreval("Digite a idade")
      leia(idades[i])

      soma <- soma + idades[i]

      se (idades[i] > 18) entao
         maiores <- maiores + 1
      senao se (idades[i] < 5) entao
         menores <- menores + 1
      fimse

      se (idades[i] > maior) entao
         maior <- idades[i]
      fimse

   fimpara

   media <- soma / i

   escreval("A média das idades é",media)

   escreval(maiores," são maiores de 18 anos")

   escreval(menores," são menores de 5 anos")

   escreval(maior," é a maior idade")

Fimalgoritmo