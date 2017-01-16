json.extract! employee, :id, :department_id, :name, :created_at, :updated_at
json.url employee_url(employee, format: :json)