class Restaurant < ApplicationRecord
  categories = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: categories, message: "%{value} is not a valid category" }
  validates :phone_number, :name, :address, presence: true
end
