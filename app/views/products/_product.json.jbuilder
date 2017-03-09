json.extract! product, :id, :name, :address, :phone, :city, :type_id, :created_at, :updated_at
json.url product_url(product, format: :json)
