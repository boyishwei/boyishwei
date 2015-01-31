<% if flash[:post_error] %>
msg = """
<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Warning!</strong> <%= flash[:post_error]%>
</div>
""" 
$(".post-compose-div").prepend msg 
<% else %>
  location.reload()
<% end %>
