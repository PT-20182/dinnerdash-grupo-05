class AddMealAmmountToMealCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_categories, :meal_ammount, :integer
  end
end
