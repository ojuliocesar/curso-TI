const soma = () => {

    let numero1 = prompt('Digite o primeiro número')

    let numero2 = prompt('Digite o segundo número')

    let soma = parseInt(numero1) + parseInt(numero2)

    alert('A soma dos números é '+soma) 

}

const soma2 = (numero1, numero2) => {

    let soma = numero1 + numero2
    
    alert(soma)

}

const somaNumeros = () => {
    // Cria uma variável e captura o valor do input com o id = numero1 e numero2
    let numero1 = document.getElementById('numero1').value

    let numero2 = document.getElementById('numero2').value

    let soma = parseFloat(numero1) + parseFloat(numero2)

    // Exibe a soma dos números dentro da div resultado

    document.getElementById('resultado').innerHTML = `Resultado da soma é ${soma}`
}