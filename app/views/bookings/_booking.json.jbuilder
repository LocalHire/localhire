json.extract! booking, :id, :date, :price, :item_id, :user_id, :lender_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
