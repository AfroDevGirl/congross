json.extract! bill, :id, :number, :bill_id, :api_url, :title, :latest_action, :created_at, :updated_at
json.url bill_url(bill, format: :json)
