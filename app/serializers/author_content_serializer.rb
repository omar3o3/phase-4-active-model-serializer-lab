class AuthorContentSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :post_tags
  belongs_to :author
  has_many :tags, through: :post_tags

  def p_tags
    self.object.post_tags
  end

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
