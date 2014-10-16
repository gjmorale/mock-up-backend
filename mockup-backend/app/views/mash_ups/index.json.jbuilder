json.array!(@mash_ups) do |mash_up|
  json.extract! mash_up, :id, :name
  json.url mash_up_url(mash_up, format: :json)
end
