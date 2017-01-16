json.extract! reservation, :id, :start, :end, :room_type, :guest_name1, :guest_name2, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)