json.extract! content, :id, :title, :body, :image1, :kind, :created_at, :updated_at
json.url content_url(content, format: :json)
