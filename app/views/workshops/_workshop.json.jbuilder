json.extract! workshop, :id, :name, :start_date, :end_date, :students_count, :amount, :fee, :college_id, :workshop_type_id, :created_at, :updated_at
json.url workshop_url(workshop, format: :json)