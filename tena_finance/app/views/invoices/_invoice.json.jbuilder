json.extract! invoice, :id, :generated_on, :total_price, :service_type, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
