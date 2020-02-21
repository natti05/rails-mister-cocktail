class Ingredient < ApplicationRecord
  has_many :cocktails
  has_many :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end

