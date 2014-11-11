class User
  include Mongoid::Document
  field :name, type: String
  field :password, type: String
  field :mail, type: String
end
