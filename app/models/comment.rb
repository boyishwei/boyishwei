class Comment
  include Mongoid::Document

  field :mailid, type: String
  field :name, type: String 
  field :body, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime 
end
