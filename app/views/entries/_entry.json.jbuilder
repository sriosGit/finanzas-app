json.extract! entry, :id, :user_id, :account_id, :amount, :created_at, :updated_at
json.url entry_url(entry, format: :json)