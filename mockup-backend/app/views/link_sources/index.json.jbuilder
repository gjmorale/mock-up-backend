json.array!(@link_sources) do |link_source|
  json.extract! link_source, :id, :name, :picture
  json.url link_source_url(link_source, format: :json)
end
