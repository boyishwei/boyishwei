class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include UserHelper
  protect_from_forgery with: :exception, only:['new', 'create', 'update', 'distroy']

  before_action :login_check, only:['new', 'create', 'update', 'distroy']

  private
  def login_check
    session[:return_to] ||= request.fullpath || :root_path
    redirect_to login_path unless signed_in?
  end
end
