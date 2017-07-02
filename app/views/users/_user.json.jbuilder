json.extract! user, :id, :name, :dni, :ruc, :created_at, :updated_at
json.url user_url(user, format: :json)