json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :user_id, :plan_id, :price
  json.url subscription_url(subscription, format: :json)
end
