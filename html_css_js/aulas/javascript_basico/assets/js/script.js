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

const exibe = (id) => {
    let elemento =  document.getElementById(id)

    if (elemento.hidden == true) {
        elemento.hidden = false
    } else {
        elemento.hidden = true
    } 
}

// const exibeSelect = () => {
//     let opcao = document.getElementById('tecnologia').value

//     let elemento =  document.getElementById(opcao)

//     if (elemento.hidden == true) {
//         elemento.hidden = false
//     } else {
//         elemento.hidden = true
//     } 
// }

const exibeCidade = () => {
    let estado = document.getElementById('estado')

    let cidade = document.getElementById('cidade')

    if (estado.value == 'sp') {
        cidade.innerHTML = `
            <option value="">São João da Boa Vista</option>
            <option value="">Aguaí</option>
            <option value="">Águas da Prata</option>
        `
    }else if (estado.value == 'rj') {
        cidade.innerHTML = `
            <option value="">Laranjeiras</option>
            <option value="">Xerém</option>
            <option value="">Parati</option>
        `
    }else if (estado.value == 'mg') {
        cidade.innerHTML = `
            <option value="">Andradas</option>
            <option value="">Poços de Caldas</option>
            <option value="">Belo Horizonte</option>
        `
    }
}

// Função que consulta o cep de uma API
// API utilizada: POSTMON

const consultaCEP= () => {
    let cep = document.getElementById('cep').value

    fetch(`https://viacep.com.br/ws/${cep}/json/`)
}