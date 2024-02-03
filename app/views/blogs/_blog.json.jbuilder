json.extract! blog, :id, :user_id, :title, :content, :featured_image, :description, :published, :created_at, :updated_at
json.url blog_url(blog, format: :json)
json.content blog.content.to_s
json.featured_image url_for(blog.featured_image)
json.description blog.description.to_s
