json.extract! post, :id, :user, :post_date, :comment, :created_at, :updated_at
json.url post_url(post, format: :json)
