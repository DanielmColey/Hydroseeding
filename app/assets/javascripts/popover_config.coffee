ready = ->
  $('[data-toggle="popover"]').popover("show")
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
