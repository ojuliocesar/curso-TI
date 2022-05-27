// $('').waypoint(
//     function() {

//     }, {

// })

$('section#final-semana').waypoint(
    function(direcao) {
        if (direcao == "down") {
            $('div.folha1').addClass('animate__animated animate__fadeInUp')
            $('div.folha2').addClass('animate__animated animate__fadeInUp')
            $('div.folha3').addClass('animate__animated animate__fadeInUp')
            $('div.camarao').addClass('animate__animated animate__fadeInUp')
            $('div.queijo').addClass('animate__animated animate__fadeInUp')
            $('div.tomate').addClass('animate__animated animate__fadeInUp')
        } if(direcao == "up") {
            $('div.folha1').removeClass('animate__animated animate__fadeInUp')
            $('div.folha2').removeClass('animate__animated animate__fadeInUp')
            $('div.folha3').removeClass('animate__animated animate__fadeInUp')
            $('div.camarao').removeClass('animate__animated animate__fadeInUp')
            $('div.queijo').removeClass('animate__animated animate__fadeInUp')
            $('div.tomate').removeClass('animate__animated animate__fadeInUp')
        }
    }, {
        // Indica quantos pixels antes do elemento o efeito começará a ser aplicado
        offset: '450px;'
})

function mostrarMenu() {
    $('nav ul#esquerda').css('display', 'flex');
    $('nav ul#direita').css('display', 'flex');
}

function esconderMenu() {
    $('nav ul#esquerda').css('display', 'none');
    $('nav ul#direita').css('display', 'none');
}

var controle = true;

$('nav ul#icone-menu-mobile').click(function() {
    if (controle == true) {
        mostrarMenu();
        controle = false;
    }else {
        esconderMenu();
        controle = true;
    }
})