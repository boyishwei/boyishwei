# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $(".glyphicon-comment").on 'click', ->
   commentbox = $(this).parents(".post-item").find(".comment-box")
   return commentbox.remove() if commentbox.length > 0 
   commentbox = $("#hidden-comment-box").clone()
   commentbox.addClass("comment-box").removeClass("global-hidden")
    
   #TODO figure out $(this) and it's parents
   commentbox.appendTo $(".post-item")

  $("#display-post-btn").click ->
    #$(this).hide()
    #$("#post-form").removeClass("global-hidden")
    $("#post-form").slideDown(500)
    $(this).hide(500)
  $("#cancel-post-btn").click ->
    $("#post-form").slideUp(500)
    $("#display-post-btn").show(500)
 
