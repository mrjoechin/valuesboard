json.array!(@users) do |user|
  json.extract! user, :id, :full_name, :nickname, :email
  json.url user_url(user)
end
