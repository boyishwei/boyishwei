module UserHelper
  def login
    render text:"login page"
  end

  def sign_in(user)
    cookies.permanent[:remember_token]=user.remember_token
    self.current_user=user
  end

  def current_user=(user)
    logger.info "set up user"
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by remember_token: cookies[:remember_token] if cookies[:remember_token]   
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    if signed_in?
      current_user.renew_token
      self.current_user = nil
      cookies.delete(:remember_token)
    end
  end  
end
