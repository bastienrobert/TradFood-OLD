Rails.application.routes.draw do
  # Devise
  devise_for :users
  # Scaffolds
  resources :cities
  post "cities/search", to: "cities#search"

  resources :recipes
  # Root & static pages
  root to: "pages#home"
  get "/:about" => "pages#about", as: "about"
end
