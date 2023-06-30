class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author_name

  has_many :tags, serializer: TagSerializer

  def author_name
    object.author.name
  end
end
