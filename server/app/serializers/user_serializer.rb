class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :acts
  class ActSerializer < ActiveModel::Serializer
    attributes :id, :content, :done_count
  end
end
