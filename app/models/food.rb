class Food < ApplicationRecord
  validates :name, presence: true, length: { in: 1..15 }
  validates :measurement_unit, presence: true, length: { in: 1..9 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
end
