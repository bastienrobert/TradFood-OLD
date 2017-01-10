Rails.application.routes.draw do
  # Devise
  devise_for :users
  # Scaffolds
  resources :cities
  post "cities/search", to: "cities#search"
  post "cities/sort", to: "cities#sort"
  resources :recipes
  # Root & custom
  root to: "pages#home"
  get "/:page" => "pages#show"
end
