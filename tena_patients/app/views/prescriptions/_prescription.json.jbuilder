json.extract! prescription, :id, :date, :doctor_note, :drug_information, :doctor_id, :patient_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
