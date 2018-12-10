Rails.application.routes.draw do
  devise_for :users
  root to: "meal_categories#index"
  resources :meal_categories
  resources :meals
end
