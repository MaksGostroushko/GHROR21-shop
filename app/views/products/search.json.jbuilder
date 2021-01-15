json.array!(@product) do |product|
  json.name product.name + ', ' + product.description
end