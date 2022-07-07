// Adiciona o efeito de smooth scrool ao link ancora da pagina
$('.nav a[href^="#"]').on('click', function (e) {
    e.preventDefault();
    var id = $(this).attr('href'),
        targetOffset = $(id).offset().top;

    $('html, body').animate({
        scrollTop: targetOffset - $('nav').outerHeight()
    }, 500);
});
