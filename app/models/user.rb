class User
  include Mongoid::Document
  field :name, type: String
  field :password, type: String
  field :email, type: String
  field :remember_token, type: String

  before_save :create_remember_token

  paginates_per 10 
  def renew_token
    self.remember_token = SecureRandom.urlsafe_base64
    self.save
  end
 
  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
