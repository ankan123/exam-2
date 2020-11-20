json.extract! item, :id, :name, :brand_id, :category_id, :quantity, :status, :notes, :created_at, :updated_at
json.url item_url(item, format: :json)
