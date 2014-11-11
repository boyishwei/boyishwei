class BlogController < ApplicationController

  layout 'overall'
  def index
    @blogs = Blog.all

  end 
end
