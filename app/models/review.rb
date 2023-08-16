class Review < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews must be destroyed.
  belongs_to :restaurant
  # A review must have a content and a rating.
  validates :content, :rating, presence: true
  # A review’s rating must be an integer number between 0 and 5. For example, a review with a rating of 2.5 should be invalid!
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
