json.extract! food, :id, :name, :price, :description, :picture, :host_id, :created_at, :updated_at
json.url food_url(food, format: :json)
