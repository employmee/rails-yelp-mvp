class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES, message: "%{value} is not a valid category" }
  validates :phone_number, :name, :address, presence: true
end
