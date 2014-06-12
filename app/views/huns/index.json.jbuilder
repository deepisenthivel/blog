json.array!(@huns) do |hun|
  json.extract! hun, :id, :name
  json.url hun_url(hun, format: :json)
end
