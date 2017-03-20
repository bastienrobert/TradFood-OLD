json.extract! city, :id, :name, :description, :created_at, :updated_at, :image, :status
json.url city_url(city, format: :json)
