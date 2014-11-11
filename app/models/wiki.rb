class Wiki
  include Mongoid::Document

  field :tile
  field :body

  has_many :comments
  belongs_to :category
end
