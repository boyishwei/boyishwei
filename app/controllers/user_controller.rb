class UserController < ApplicationController
  include UserHelper
  layout 'overall'
  def login
    if params["user"]
      do_login
      redirect_to session.delete(:return_to) || :root
    else
      render :login
    end
  end
 
  def logout
    p User.first().name
    sign_out 

    redirect_to :root
  end
  
  private
  def do_login
    logger.info "into user login action"
    user = User.first()#User.find(name:'Ryan')
    logger.info user.id
    
    if user.password === params[:user][:password]
       sign_in user
       logger.info "Master logged in"
    else
       flash[:login_error] = "password not correct!"
       logger.info "password not correct!"
    end 
  end
end
