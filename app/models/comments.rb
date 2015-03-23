class Comments
  include Mongoid::Document
  field :email, type: String
  field :comment, type: String
  field :created_at, type: Date
  field :updated_at, type: Date
  
  belongs_to :blog, dependent: :destroy
  validates :body, presence: { message:"null not allowed, buddy!" }

end
