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

  $(document).on 'click', '.search-icon', ->
    $('.global-nav').children().css
      display: 'block'
    $('.global-nav').css
      height: 'auto'
    $('.global-nav form').css
      display: 'inline-block'
    $('.global-nav header').css
      height: '60px'
    $('.global-nav h1').css
      display: 'inline-block'
      height: '60px'
      margin: 'auto 20px'
    $('#tag_search').css
      display: 'inline-block'
      width: '75%'
      margin: '10px 0'
      padding: '6px 12px'
    $('.nav-target').css
      display: 'inline-block'
    $('.custom-tags').css
      display: 'flex'
      margin: '10px 10px 20px'
    $('.nav-target').removeClass('fa-search search-icon').addClass('fa-times close-icon')

  $(document).on 'click', '.close-icon', ->
    $('.custom-tags').hide()
    $('#tag_search').hide()
    $('.global-nav header').css
      display: 'flex'
    $('.global-nav h1').css
      display: 'block'
      margin: '0 auto'
    $('.nav-target').removeClass('fa-times close-icon').addClass('fa-search search-icon')
