json.array!(@tablas) do |tabla|
  json.extract! tabla, :id, :titulo, :categoria
  json.url tabla_url(tabla, format: :json)
end
