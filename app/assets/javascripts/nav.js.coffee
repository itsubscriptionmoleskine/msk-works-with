mobileNav = () ->
  menuToggle = $('#js-navigation-mobile-menu').unbind()
  $('#js-navigation-menu').removeClass 'show'
  menuToggle.on 'click', (e) ->
    e.preventDefault()
    $('#js-navigation-menu').slideToggle ->
      if $('#js-navigation-menu').is(':hidden')
        $('#js-navigation-menu').removeAttr 'style'
      return
    return
  return


$(document).ready ->
  mobileNav()
  return

$(document).on 'page:load', ->
  mobileNav()
  return

$(window).resize ->
  mobileNav()
  return