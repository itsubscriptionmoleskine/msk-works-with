gtag = ->
  dataLayer.push arguments
  return

window.dataLayer = window.dataLayer or []
gtag 'js', new Date
gtag 'config', 'UA-96349706-13'