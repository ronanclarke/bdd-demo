json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :price, :kittens_per_month
  json.url plan_url(plan, format: :json)
end
