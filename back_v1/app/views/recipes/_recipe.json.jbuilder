json.extract! recipe, :id, :name, :date, :description, :recipe, :prepare, :cook, :type, :difficulty, :season, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)