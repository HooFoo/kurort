json.extract! point, :id, :user_id, :name, :lng, :lat, :open, :close, :extra, :image, :lang, :created_at, :updated_at
json.url point_url(point, format: :json)