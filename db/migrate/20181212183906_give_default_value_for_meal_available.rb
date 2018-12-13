class GiveDefaultValueForMealAvailable < ActiveRecord::Migration[5.2]
  def change
    change_column_default :meals, :available, from: nil, to: true
  end
end
