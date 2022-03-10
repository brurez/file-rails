json.extract! image_post, :id, :title, :description, :published, :image, :created_at, :updated_at
json.url image_post_url(image_post, format: :json)
json.image url_for(image_post.image)
