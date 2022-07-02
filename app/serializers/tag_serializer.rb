class TagSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :post_tag
end
