json.extract! job, :id, :title, :description, :created_at, :updated_at, :premium
json.url job_url(job, format: :json)
