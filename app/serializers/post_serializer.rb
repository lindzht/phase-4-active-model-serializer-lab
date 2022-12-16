class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :author, :tags

  def short_content
    "#{self.object.content[0...40]}..."
  end

  has_many :tags

end
