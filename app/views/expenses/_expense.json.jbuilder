json.extract! expense, :id, :date, :amount, :description, :type, :kind_id, :store_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
