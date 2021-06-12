json.extract! signup, :id, :full_name, :attending, :user_id, :seminar_id, :created_at, :updated_at
json.url signup_url(signup, format: :json)
