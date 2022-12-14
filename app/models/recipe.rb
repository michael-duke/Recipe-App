class Recipe < ApplicationRecord
  validates :name, presence: true, length: { in: 1..18 }
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { in: 1..450 }

  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
end
