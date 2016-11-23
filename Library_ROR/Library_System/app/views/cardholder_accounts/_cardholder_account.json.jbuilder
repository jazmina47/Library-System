json.extract! cardholder_account, :id, :firstname, :lastname, :cardholder_id, :created_at, :updated_at
json.url cardholder_account_url(cardholder_account, format: :json)