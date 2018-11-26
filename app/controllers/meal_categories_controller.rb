class MealCategoriesController < ApplicationController
	def index
		@MealCategoriesController = MealCategoriesController.all
	end
end
