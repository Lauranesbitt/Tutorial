json.extract! patient, :id, :name, :address, :dob, :phone, :infection, :injury, :created_at, :updated_at
json.url patient_url(patient, format: :json)
