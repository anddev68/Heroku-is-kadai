json.extract! user, :id, :name, :win, :lose, :created_at, :updated_at
json.url user_url(user, format: :json)
