class User < ApplicationRecord
  has_many :acts

  validates :category, presence: true, uniqueness: true
end
