json.array!(@offers) do |offer|
  json.extract! offer, :id, :title, :description, :created_at, :updated_at, :user_id
  json.url offer_url(offer, format: :json)
end
