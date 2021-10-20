json.extract! sale_transaction, :id, :customer_id, :created_at, :updated_at
json.url sale_transaction_url(sale_transaction, format: :json)
