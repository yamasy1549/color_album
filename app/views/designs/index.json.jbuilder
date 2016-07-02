json.array!(@designs) do |design|
  json.extract! design, :id, :title, :image
  json.url design_url(design, format: :json)
end
