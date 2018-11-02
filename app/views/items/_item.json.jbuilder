json.extract! item, :id, :name, :description, :instructions, :price_per_hour, :max_hours_per_hire, :price_per_day, :max_days_per_hire, :price_per_week, :max_weeks_per_hire, :created_at, :updated_at
json.url item_url(item, format: :json)
