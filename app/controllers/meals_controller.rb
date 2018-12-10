class MealsController < ApplicationController

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.save
    redirect_to meals_path
  end

  def index
    @meals = Meal.all
  end

  def meal_params
    params.require(:meal).permit(:name, :meal_category_id, :description, :price, :image)
  end
  
end
