Rails.application.routes.draw do
  # Devise
  devise_for :users
  # Scaffolds
  get "/cities/:name" => "cities#showByCity", as: :city_show_by_city_path
  resources :cities
  post "cities/search", to: "cities#search"
  post "cities/sort", to: "cities#sort"

  resources :recipes
  # Root & static pages
  root to: "pages#home"
  get "/:about" => "pages#about", as: "about"
end
