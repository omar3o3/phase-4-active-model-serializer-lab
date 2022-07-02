class PostSerializer < ActiveModel::Serializer
  attributes :id

  has_many :post_tags
  belongs_to :author
end
