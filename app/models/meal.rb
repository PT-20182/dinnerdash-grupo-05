class Meal < ApplicationRecord
  has_one_attached :image
  belongs_to :meal_category #, class_name: "meal_category", foreign_key: "meal_category_id"
end
