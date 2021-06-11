json.extract! seminar, :id, :title, :start_time, :end_time, :user_id, :created_at, :updated_at
json.url seminar_url(seminar, format: :json)
