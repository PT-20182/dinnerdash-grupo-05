class HomesController < ApplicationController
  def index
    @meal_categories = MealCategory.all
  end
end
