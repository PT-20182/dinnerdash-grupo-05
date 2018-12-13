class MealCategory < ApplicationRecord
  has_many :meals
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
