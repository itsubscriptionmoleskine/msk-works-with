getCookie = (cookieName) ->
  name = cookieName + '='
  cookie = decodeURIComponent(document.cookie)
  cookie_split = cookie.split(';')
  i = 0
  while i < cookie_split.length
    c = cookie_split[i]
    while c.charAt(0) == ' '
      c = c.substring(1)
    if c.indexOf(name) == 0
      return c.substring(name.length, c.length)
    i++
  ''

checkCookie = (cookieName) ->
  constent = getCookie(cookieName)
  if constent == 'true'
    $('#cookieBar').hide()
  else
    console.log('no cookie')
    $('#cookieBar').show()
  return


setCookie = (cname, cvalue, exdays) ->
  d = new Date
  d.setTime d.getTime() + exdays * 24 * 60 * 60 * 1000
  expires = 'expires=' + d.toUTCString()
  document.cookie = cname + '=' + cvalue + ';' + expires + ';path=/'
  checkCookie(cname)
  getCookie(cname)
  return

$(document).ready ->
  checkCookie('consent')
  $('#iConsent').on 'click', ->
    setCookie('consent', true, 14)
    return
  return

