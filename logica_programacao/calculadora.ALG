Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/06/2022
Var
// Seção de Declarações das variáveis
numero1: inteiro
numero2: inteiro
operacao: caracter
resultado: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Digite o primeiro número: ")
leia(numero1)

escreval("Digite o segundo número: ")
leia(numero2)

escreval("Digite a operação: ")
leia(operacao)

escolha operacao
caso "+"
   resultado <- numero1 + numero2
caso "-"
   resultado <- numero1 - numero2
caso "*"
   resultado <- numero1 * numero2
caso "/"
   resultado <- numero1 / numero2
outrocaso
   escreval("Opção inválida")
fimescolha

escreval("Resultado: ",resultado)


Fimalgoritmo