mobileNav = () ->
  menuToggle = $('#js-navigation-mobile-menu').unbind()
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

$(document).on 'turbolinks:load', ->
  mobileNav()
  return

$(window).resize ->
  mobileNav()
  return
