ready = ->
  $("#login-btn").click ->
    $("#login-submit").click()
  $(".btn-modal-close").click ->
    $("#user_password").val ""
    $(".modal-error").remove()

$(document).ready(ready)
$(document).on('page:load',ready)
