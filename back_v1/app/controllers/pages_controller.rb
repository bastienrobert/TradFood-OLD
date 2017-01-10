class PagesController < ApplicationController
   def show
      render template: "pages/#{params[:page]}"
   end
   def home
     @cities = City.all
     @citiesStared = City.where(status:2).limit(5)
     @recipes = Recipe.all
     @recipesStared = Recipe.where(status:2).limit(5)
     @recipesLast = Recipe.last(3).reverse
   end
 end
