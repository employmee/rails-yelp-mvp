class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: 0..5, message: "Rating must be between 0-5" }, numericality: { only_integer: true }
  validates :rating, :content, presence: true
end
