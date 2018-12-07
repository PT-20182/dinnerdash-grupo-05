class GiveDefaultValueForMealAmmount < ActiveRecord::Migration[5.2]
  def change
    change_column_default :meal_categories, :meal_ammount, from: nil, to: 0
  end
end
