class MealsController < ApplicationController
  before_action :set_meal, only: [:destroy, :edit, :update]

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.available = true
    if @meal.valid?
      @meal.save!
      redirect_to meals_path
    else
      render 'new'
    end
  end

  def index
    @meals = Meal.all
  end

  def destroy
    @meal.destroy
    redirect_to meals_url
  end

  def edit
  end

  def update
    if @meal.update(meal_params)
      redirect_to meals_path 
    else
      render :edit 
    end
  end

  private
  def set_meal
    @meal = Meal.find(params[:id])
  end
  def meal_params
    params.require(:meal).permit(:name, :meal_category_id, :description, :price, :image)
  end
end
