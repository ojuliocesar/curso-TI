Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/06/2022
Var
// Seção de Declarações das variáveis 
nivel,horames:inteiro
salario:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Digite seu nível")
leia(nivel)

escreval("Digite o total de horas trabalhadas")
leia(horames)

se (nivel = 1) entao
 salario <- horames * 12
         senao
         se (nivel = 2) entao
         salario <- horames * 17
      
              senao
               se (nivel = 3) entao
                   salario <- horames * 25
              fimse
         fimse
fimse

escreval("Seu salário mensal é de R$",salario)


Fimalgoritmo