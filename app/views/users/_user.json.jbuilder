json.extract! user, :id, :name, :age, :email, :identifier, :created_at, :updated_at
json.url user_url(user, format: :json)
