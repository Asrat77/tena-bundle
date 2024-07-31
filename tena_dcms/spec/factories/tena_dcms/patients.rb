FactoryBot.define do
  factory :patient, class: 'TenaDcms::Patient' do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    mobile_number { Faker::Name.name }
    email { Faker::Internet.email }
    gender { 'M' }
    doctor
  end
end
