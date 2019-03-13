$jq = jQuery.noConflict()
$jq(document).on 'turbolinks:load', ->
  $jq('.slider').slick({
    dots: true
  })


  return