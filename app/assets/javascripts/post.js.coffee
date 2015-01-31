# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $(".glyphicon-comment").on 'click', ->
    commentbox = $(this).parents(".post-item").find(".comment-box")
    if commentbox.length > 0 
      commentbox.toggle(1000)
      return

    commentbox = $("#hidden-comment-box").clone()
    commentbox.addClass("comment-box").appendTo $(this).parents(".post-item")
    commentbox.slideDown 500

  $("body").delegate '#display-post-btn', 'click', ->
    $("#post-form").slideDown(500)
    $(this).hide(500)

  $("#cancel-post-btn").click ->
    $("#post-form").slideUp(500)
    $("#display-post-btn").show(500)
    $(".alert").remove()
 
$(document).ready(ready)
$(document).on('page:load',ready)
