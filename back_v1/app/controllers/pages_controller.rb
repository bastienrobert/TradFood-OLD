class PagesController < ApplicationController
   def show
      render template: "pages/#{params[:page]}"
   end
   def home
     @cities = City.all
     @citiesStared = City.where(status:2)
     @recipes = Recipe.all
   end
 end
