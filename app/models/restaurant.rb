class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[chinese italian japanese french belgian]
  # A restaurant must have a name, an address and a category.
  validates :name, :address, :category, presence: true
  # A restaurant’s category must belong to the fixed list
  validates :category, inclusion: { in: CATEGORIES }
end
