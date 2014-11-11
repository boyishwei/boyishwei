class WelcomeController < ApplicationController
  layout 'overall'
  def index
    @title = "Welcome to Ryan's Website"	
  end
end
