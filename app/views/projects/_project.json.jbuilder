json.extract! project, :id, :title, :subtitle, :body, :main_image, :thumb_image, :created_at, :updated_at
json.url project_url(project, format: :json)
