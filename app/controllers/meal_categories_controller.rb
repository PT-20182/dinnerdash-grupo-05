class MealCategoriesController < ApplicationController
  def index
    @meal_categories = MealCategory.all
  end
  
  # def create
  # end
end
