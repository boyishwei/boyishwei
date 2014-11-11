class Post 
  include Mongoid::Document

  field :body
  field :image_url
  field :created_at, type: DateTime
  field :updated_at, type: DateTime

  has_many :comments, dependent: :destroy
end
