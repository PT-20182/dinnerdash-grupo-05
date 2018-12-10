class MealCategoriesController < ApplicationController
  before_action :set_meal_category, only: [:destroy, :edit, :update]

  def index
    @meal_categories = MealCategory.all
  end

  def new
    @meal_category = MealCategory.new
  end
  
  def create
    @meal_category = MealCategory.create(meal_category_params)
    redirect_to meal_categories_path
  end

  def destroy
    @meal_category.destroy
    redirect_to meal_categories_url
  end

  def edit 
  end

  def update
    if @meal_category.update(meal_category_params)
      redirect_to meal_categories_path 
    else
      render :edit 
    end
  end

  private
  def set_meal_category
    @meal_category = MealCategory.find(params[:id])
  end
  def meal_category_params
    params.require(:meal_category).permit(:name)
  end
end
