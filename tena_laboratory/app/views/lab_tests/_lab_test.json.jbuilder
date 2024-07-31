json.extract! lab_test, :id, :date, :result, :status, :lab_technician_id, :patient_id, :created_at, :updated_at
json.url lab_test_url(lab_test, format: :json)
