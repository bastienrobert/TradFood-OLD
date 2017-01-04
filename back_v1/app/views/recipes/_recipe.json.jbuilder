json.extract! recipe, :id, :name, :city, :description, :recipe, :prepare, :cook, :type, :difficulty, :season, :created_at, :updated_at, :status, :image
json.url recipe_url(recipe, format: :json)
