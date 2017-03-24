json.extract! review, :id, :user_id, :product_id, :title, :content, :rating, :images, :created_at, :updated_at
json.url review_url(review, format: :json)
