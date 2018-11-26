Rails.application.routes.draw do
  root to: "home#index"
  resources :meal_categories
end
