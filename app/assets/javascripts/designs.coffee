$(document).ready ->
  $.when(
    $('.tori-hane').addClass('patapata')
    $('#masonry-container').masonry
      itemSelector: '.mas-box',
      gutterWidth: 30,
      isAnimated: true,
      animationOptions: {
        duration: 500,
        easing: 'swing'
      }
    $('.mas-box').hide()
    $('.mas-box').each((i) ->
      $(this).delay(i * 100).fadeIn(1000))
  )
  .done ->
    $('.tori-hane').removeClass('patapata')

  $(document).on 'click', '.close', ->
    $('.modal-dialog').hide()
    $('#modal-back').hide()
