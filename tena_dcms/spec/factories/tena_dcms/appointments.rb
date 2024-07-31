FactoryBot.define do
  factory :appointment, class: 'TenaDcms::Appointment' do
    date { Date.today }
    status { 1 }
    remarks { Faker::Lorem.word }
    doctor
    patient
  end
end
