FactoryBot.define do
  factory :lab_test, class: 'TenaDcms::LabTest' do
    date { Date.today }
    result { Faker::Lorem.word }
    status { 1 }
    lab_technician
    patient
  end
end
