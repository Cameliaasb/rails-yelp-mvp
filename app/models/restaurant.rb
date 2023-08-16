class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # A restaurant must have a name, an address and a category.
  validates :name, :address, :category, presence: true
  # A restaurant’s category must belong to the fixed list
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
