json.array!(@mashups) do |mashup|
  json.extract! mashup, :id, :parameters, :name, :user_id
  json.url mashup_url(mashup, format: :json)
end
