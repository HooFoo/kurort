json.extract! comment, :id, :user_id, :point_id, :text, :image, :created_at, :updated_at
json.url comment_url(comment, format: :json)