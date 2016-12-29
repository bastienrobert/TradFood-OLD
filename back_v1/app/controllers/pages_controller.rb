class PagesController < ApplicationController
   def show
      render template: "pages/#{params[:page]}"
   end
   def home
     @cities = City.all
     @recipes = Recipe.all
   end
 end
