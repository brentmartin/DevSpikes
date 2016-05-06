json.array!(@users) do |user|
  json.extract! user, :id, :name, :location, :email, :user_photo, :registration
  json.url user_url(user, format: :json)
end
