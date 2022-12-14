class User < ApplicationRecord
  validates :name, presence: true, length: { in: 2..20 }

  has_many :foods, dependent: :destroy
  has_many :recipes, dependent: :destroy
end
