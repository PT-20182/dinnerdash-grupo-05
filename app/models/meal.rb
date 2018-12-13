class Meal < ApplicationRecord
  has_one_attached :image
  belongs_to :meal_category #, class_name: "meal_category", foreign_key: "meal_category_id"

  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true
  validates :price, presence: true #, if: :is_valid_price? #não ta funcionando por algum motivo. se der tempo checar depois
  
  # private
  # def is_valid_price? price
  #   (/(\d+)[,\.](\d{2})/ =~ price) != nil
  # end
end
