json.extract! account, :id, :amount, :rate_type, :interest, :period, :rate, :user, :created_at, :updated_at
json.url account_url(account, format: :json)