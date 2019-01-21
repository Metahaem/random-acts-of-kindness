class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :acts
  has_many :acts
end
