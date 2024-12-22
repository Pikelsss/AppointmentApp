json.extract! task, :id, :item, :completed, :appointment_id, :created_at, :updated_at
json.url task_url(task, format: :json)
