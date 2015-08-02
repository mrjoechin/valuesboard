json.array!(@values) do |value|
  json.extract! value, :id, :name, :description, :image
  json.url value_url(value, format: :json)
end
