json.array!(@links) do |link|
  json.extract! link, :id, :value, :link, :title, :mashup_id, :link_source_id
  json.url link_url(link, format: :json)
end
