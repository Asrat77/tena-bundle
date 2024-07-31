FactoryBot.define do
  factory :prescription, class: 'TenaDcms::Prescription' do
    date { Date.today }
    doctor_note { Faker::Lorem.word }
    drug_information { Faker::Lorem.word }
    doctor
    patient
  end
end
