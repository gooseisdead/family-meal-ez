Rails.application.routes.draw do
  resources :employees
  resources :family_meals
  resources :recipes
  resources :ingredients
  resources :recipe_ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
