json.extract! reservation, :id, :time, :location, :date, :guest_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
