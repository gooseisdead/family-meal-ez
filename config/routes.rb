Rails.application.routes.draw do
  resources :employees
  resources :family_meals
  resources :recipes
  resources :ingredients
  resources :recipe_ingredients

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new_login', to: 'sessions#new_login', as: 'new_login'
  post '/sessions/new_login', to: 'sessions#login'

  post '/ingredients/:id', to: 'ingredients#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
