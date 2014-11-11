class Movie 
  include Mongoid::Document

  field :name
  field :image_url
  field :category
  field :brief
  field :comment
  field :recommendation
  field :created_at, type: DateTime
  field :updated_at, type: DateTime
end
