class WelcomeController < ApplicationController
  layout 'overall'
  def index
    @title = "Welcome to Ryan's Website"	
    @blogs = Blog.where(visible:true).order("id desc").limit(5)
  end
end
