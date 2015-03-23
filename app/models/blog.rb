class Blog
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :visible, type: Mongoid::Boolean
  field :created_at, type: DateTime
  field :updated_at, type: DateTime
  
  has_many :comments, dependent: :destroy
end
