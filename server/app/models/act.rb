class Act < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :category, presence: true, uniqueness: true
end
