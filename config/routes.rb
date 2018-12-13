Rails.application.routes.draw do
  devise_for :users
  resources :meal_categories
  resources :meals
  resources :homes
  root to: "homes#index"
end
