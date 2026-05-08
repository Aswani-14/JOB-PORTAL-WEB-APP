json.extract! job, :id, :title, :company, :location, :salary, :description, :created_at, :updated_at
json.url job_url(job, format: :json)
