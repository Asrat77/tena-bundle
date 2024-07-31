FactoryBot.define do
  factory :lab_technician, class: 'TenaDcms::LabTechnician' do
    name { Faker::Name.name }
    contact_info { Faker::Internet.email }
  end
end
