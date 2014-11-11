class Blog
  include Mongoid::Document

  field :title
  field :body
  field :created_at, type: DateTime
  field :updated_at, type: DateTime

  has_many :comments, dependent: :destroy
  belongs_to :category
end
