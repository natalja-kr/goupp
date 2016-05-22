json.array!(@creatives) do |creative|
  json.extract! creative, :id
  json.url creative_url(creative, format: :json)
end
