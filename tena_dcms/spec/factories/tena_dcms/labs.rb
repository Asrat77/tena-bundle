FactoryBot.define do
  factory :lab, class: 'TenaDcms::Lab' do
    name { Faker::Name.name }
    location { 'Location...' }
  end
end
