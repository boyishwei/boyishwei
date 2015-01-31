class Post 
  include Mongoid::Document

  paginates_per 5

  field :body
  field :image_url
  field :created_at, type: DateTime
  field :updated_at, type: DateTime

  has_many :comments, dependent: :destroy
  
  validates :body, presence: { message:"null not allowed, buddy!" }
end
