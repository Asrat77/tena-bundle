FactoryBot.define do
  factory :doctor, class: 'TenaDcms::Doctor' do
    name { Faker::Name.name }
    phone_number { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
