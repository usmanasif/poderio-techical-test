json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :name
end