json.array!(@users) do |user|
  json.extract! user, :id, :name, :mail, :password_digest, :token, :provider, :uid
  json.url user_url(user, format: :json)
end
