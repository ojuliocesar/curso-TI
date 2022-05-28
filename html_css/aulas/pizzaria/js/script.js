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
        offset: '440px;'
})

$('div#transicao-testemunha-plano').waypoint(
    function(direcao) {
        if (direcao == "down") {
            $('div#decoracao1').removeClass('animate__animated animate__fadeOutLeft')
            $('div#decoracao3').removeClass('animate__animated animate__fadeOutRight')

            $('div#decoracao1').addClass('animate__animated animate__fadeInLeft')
            $('div#decoracao2').addClass('animate__animated animate__fadeInUp')
            $('div#decoracao3').addClass('animate__animated animate__fadeInRight')
        } if(direcao == "up") {
            $('div#decoracao1').removeClass('animate__animated animate__fadeInLeft')
            $('div#decoracao3').removeClass('animate__animated animate__fadeInRight')
        }
    }, {
        // Indica quantos pixels antes do elemento o efeito começará a ser aplicado
        offset: '560px;'
})

$('div#transicao-testemunha-plano').waypoint(
    function(direcao) {
        if(direcao == "up") {
            $('div#decoracao1').addClass('animate__animated animate__fadeOutLeft')
            $('div#decoracao3').addClass('animate__animated animate__fadeOutRight')
        }
    }, {
        // Indica quantos pixels antes do elemento o efeito começará a ser aplicado
        offset: '-190px;'
})

$('section#plano-principal').waypoint(
    function(direcao) {
        if (direcao == "down") {
            $('div.planos1').removeClass('animate__animated animate__fadeOutLeft')
            $('div.planos2').removeClass('animate__animated animate__fadeOutDown')
            $('div.planos3').removeClass('animate__animated animate__fadeOutRight')

            $('div.planos1').addClass('animate__animated animate__fadeInLeft')
            $('div.planos2').addClass('animate__animated animate__fadeInUp')
            $('div.planos3').addClass('animate__animated animate__fadeInRight')
        } if (direcao == "up") {
            $('div.planos1').removeClass('animate__animated animate__fadeInLeft')
            $('div.planos2').removeClass('animate__animated animate__fadeInUp')
            $('div.planos3').removeClass('animate__animated animate__fadeInRight')
        }
    }, {
        // Indica quantos pixels antes do elemento o efeito começará a ser aplicado
        offset: '250px;'
})

$('section#plano-principal').waypoint(
    function(direcao) {
         if (direcao == "up") {
            $('div.planos1').addClass('animate__animated animate__fadeOutLeft')
            $('div.planos2').addClass('animate__animated animate__fadeOutDown')
            $('div.planos3').addClass('animate__animated animate__fadeOutRight')
        }
    }, {
        // Indica quantos pixels antes do elemento o efeito começará a ser aplicado
        offset: '-300px;'
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