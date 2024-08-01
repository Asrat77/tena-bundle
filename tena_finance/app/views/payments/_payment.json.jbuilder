json.extract! payment, :id, :sub_total, :gross_total, :deposit_total, :doctor_id, :patient_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
