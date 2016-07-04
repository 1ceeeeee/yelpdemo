json.array!(@restauraunts) do |restauraunt|
  json.extract! restauraunt, :id, :name, :address, :phone, :website
  json.url restauraunt_url(restauraunt, format: :json)
end
