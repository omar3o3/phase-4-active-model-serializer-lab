class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts, serializer: AuthorContentSerializer
  has_one :profile
end
