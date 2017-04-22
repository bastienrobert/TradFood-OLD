class PagesController < ApplicationController
   def home
     @cities = City.all
     @recipes = Recipe.all
   end
 end
