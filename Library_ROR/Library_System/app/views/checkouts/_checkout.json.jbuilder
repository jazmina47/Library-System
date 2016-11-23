json.extract! checkout, :id, :date, :due_date, :checkout_id, :cardholder_id, :staff_member_id, :created_at, :updated_at
json.url checkout_url(checkout, format: :json)