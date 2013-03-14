jQuery ->

  $('[data-behaviour~=brick-link]').click ->
    target = $(this).data('target')
    targetBlock = target.split('_', 1)
    $('.custom-brick').hide()
    $('div[id^="'+targetBlock+'"]').show()
    $('html, body').animate
      scrollTop: $('#'+targetBlock).offset().top - 60
      500
    $('html, body').animate
      scrollTop: $('#'+target).offset().top - 60
      2000
